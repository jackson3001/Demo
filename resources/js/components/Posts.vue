<template>

<div class="card">
    <div class="card-body">
        <div class="d-flex justify-content-between pb-2 mb-2">
            <h5 class="card-title">All Properties</h5>
            <div>
                <button class="btn btn-success" type="button" @click="this.$router.push('/posts/add')">New Property</button>
                <label>Search</label><input type="text" v-model="keyword" placeholder="Search Here">
                
            </div>
        </div>
        
        <table class="table table-hover table-sm">
            <thead class="bg-dark text-light">
                <tr>
                    <th width="50" class="text-center">#</th>
                    <th>County</th>
                    <th>Country</th>
                    <th>Town</th>
                    <th>Description</th>
                    <th>Address</th>
                    <th class="text-center" width="120">Image</th>
                    <th>Bathroom</th>
                    <th>Bedroom</th>
                    <th>Price($)</th>
                    <th>Type</th>
                    <th>Property Type</th>
                    <th class="text-center" width="200">Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="(post, index) in properties" :key="post.id" >
                    <td class="text-center">{{index+1}}.</td>
                    <td >{{post.county}}</td>
                    <td  v-text="post.country" ></td>
                    <td>{{post.town}}</td>
                    <td>{{post.description}}</td>
                    <td>{{post.address}}</td>
                    <td class="text-center">
                        <div v-if="post.image.slice(0, 5) == 'https'">
                            <img alt="post-img" width="100" v-bind:src="post.image">
                        </div>
                        <div v-else>
                            <img alt="post-img" width="100" v-bind:src="'/img/' +post.image">
                        </div>
                    </td>
                    <td>{{post.bathroom}}</td>
                    <td>{{post.bedroom}}</td>
                    <td>{{post.price}}</td>
                    <td>{{post.type}}</td>
                    <td>{{post.propertytype}}</td>
                    <td class="text-center">
                        <router-link :to="{name:'editpost', params: {id:post.id}}" class="btn btn-warning">Edit</router-link>
                        <button class="btn btn-danger" @click="deletePost(post.id)">Delete</button>
                    </td>
                </tr>
            </tbody>
        </table>


    </div>
</div>


</template>

<script>
    export default {
        data() {
            return {
                properties: [],
                strSuccess: '',
                strError: '',
                keyword: null
            }
        },
        created() {
            this.$axios.get('/sanctum/csrf-cookie').then(response => {
                this.$axios.get('/api/posts')
                .then(response => {
                    this.properties = response.data;
                })
                .catch(function(error) {
                    console.log(error);
                });
            });
        },
        watch: {
        keyword(after, before) {
            this.getResults();
                     }
              },
        methods: {
            deletePost(id) {
                this.$axios.get('/sanctum/csrf-cookie').then(response => {
                    let existingObj = this;

                    if(confirm("Do you really want to delete this data?")) {
                        this.$axios.delete(`/api/posts/delete/${id}`)
                        .then(response => {
                            let i = this.properties.map(item => item.id).indexOf(id); // find index of your object
                            this.properties.splice(i, 1);
                            existingObj.strError = "";
                            existingObj.strSuccess = response.data.success;

                        })
                        .catch(function(error) {
                            existingObj.strError = "";
                            existingObj.strSuccess = error.response.data.message;
                        });
                    }
                });
            },
            getResults() {
            axios.get('/api/posts/livesearch', { params: { keyword: this.keyword } })
                .then(res => this.properties = res.data)
                .catch(error => {});
        }
        },
        beforeRouteEnter(to, from, next) {
            if (!window.Laravel.isLoggedin) {
                window.location.href = "/";
            }
            next();
        },
       
    }

</script>