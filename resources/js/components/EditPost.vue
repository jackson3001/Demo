<template>

    <div class="card">
        <div class="card-body">
            <div class="d-flex justify-content-between pb-2 mb-2">
                <h5 class="card-title">Update Property Data</h5>
                <div>
                    <router-link :to="{name: 'posts'}" class="btn btn-success">Go Back</router-link>
                </div>
            </div>

            <div v-if="strSuccess" class="alert alert-success alert-dismissible fade show" role="alert">
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                <strong>{{strSuccess}}</strong>
            </div>

            <div v-if="strError" class="alert alert-danger alert-dismissible fade show" role="alert">
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                <strong>{{strError}}</strong>
            </div>


            <form @submit.prevent="updatePost" enctype="multipart/form-data">
                <div class="form-group mb-2">
                    <label>County</label><span class="text-danger"> *</span>
                    <input type="text" class="form-control" v-model="county" placeholder="Enter county">
                </div>

                <div class="form-group mb-2">
                    <label>Country</label><span class="text-danger"> *</span>
                    <input type="text" class="form-control" v-model="country" placeholder="Enter country">
                </div>

                <div class="form-group mb-2">
                    <label>Town</label><span class="text-danger"> *</span>
                    <input type="text" class="form-control" v-model="town" placeholder="Enter town">
                </div>

                <div class="form-group mb-2">
                    <label>Description</label><span class="text-danger"> *</span>
                   <textarea class="form-control" rows="3" v-model="description" placeholder="Enter description"></textarea>
                </div>

                <div class="form-group mb-2">
                    <label>Address</label><span class="text-danger"> *</span>
                    <input type="text" class="form-control" v-model="address" placeholder="Enter address">
                </div>

                <div class="form-gorup mb-2">
                    <label>Image</label>
                    <input type="file" class="form-control mb-2" v-on:change="onChange">

                    <div v-if="img">
                        <img v-bind:src="imgPreview" width="100" height="100"/>
                    </div>
                </div>

                <div class="form-group mb-2">
                    <label>Bedrroms</label><span class="text-danger"> *</span>
                    <select class="form-control" v-model="bedroom" >
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                    <option>10</option>
                    <option>11</option>
                    <option>12</option>
                    <option>13</option>
                    <option>14</option>
                    <option>15</option>
                    </select>
                </div>

                <div class="form-group mb-2">
                    <label>Bathrooms</label><span class="text-danger"> *</span>
                    <select class="form-control" v-model="bathroom">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                    <option>10</option>
                    <option>11</option>
                    <option>12</option>
                    <option>13</option>
                    <option>14</option>
                    <option>15</option>
                    </select>
                </div>

                <div class="form-group mb-2">
                    <label>Price($)</label><span class="text-danger"> *</span>
                    <input type="text" class="form-control" v-model="price" placeholder="Enter price">
                </div>

                <div class="form-group mb-2">
                    <label>Property Type</label><span class="text-danger"> *</span>
                    <select class="form-control" v-model="propertytype">
                    <option>Terraced</option>
                    <option>Flat</option>
                    <option>Bungalow</option>
                    <option>End of Terrace</option>
                    <option>Detatched</option>
                    <option>Bungalow</option>
                    <option>Semi-detached</option>
                    <option>Cottage</option>                  
                    </select>
                </div>


                <div class="form-group mb-2">
                    <label>Type</label><span class="text-danger"> *</span>
                    <input type="radio" id="sale" value="sale" v-model="type" />
                    <label for="sale">Sale</label>

                    <input type="radio" id="rent"  value="rent" v-model="type" />
                    <label for="rent">Rent</label>
                   
                </div>

                <button type="submit" class="btn btn-primary mt-4 mb-4"> Update </button>

            </form>
            
        </div>
    </div>
</template>
<script>
export default{
    data() {
        return {
            id: '',
            county: '',
            country: '',
            town: '',
            description: '',
            address: '',
            bedroom: '',
            bathroom: '',
            price: '',
            type: '',
            propertytype: '',
            img: '',
            strSuccess: '',
            strError: '',
            imgPreview: null
        }
    },

    created() {
        
        this.$axios.get('/sanctum/csrf-cookie').then(response => {
            this.$axios.get(`/api/posts/edit/${this.$route.params.id}`)
            .then(response => {

                this.county = response.data['county'];
                this.country = response.data['country'];
                this.town = response.data['town'];
                this.address = response.data['address'];
                this.bedroom = response.data['bedroom'];
                this.bathroom = response.data['bathroom'];
                this.price = response.data['price'];
                this.type = response.data['type'];
                this.propertytype = response.data['propertytype'];
                this.description = response.data['description'];  
                if(response.data['image'].slice(0, 5) == 'https')
                {
                    this.img = response.data['image'];
                }   
                else
                {
                    this.img = "/img/"+response.data['image'];
                }     
               
                this.imgPreview = this.img;
            })
            .catch(function(error) {
                console.log(error);
            });
        })
    },
    methods: {
        onChange(e) {
            this.img = e.target.files[0];

            let reader = new FileReader();
            reader.addEventListener("load", function () {
                this.imgPreview = reader.result;
            }.bind(this), false);

            if (this.img) {
                if ( /\.(jpe?g|png|gif)$/i.test( this.img.name ) ) {
                    reader.readAsDataURL( this.img );
                }
            }
        },
        updatePost(e) {
            this.$axios.get('/sanctum/csrf-cookie').then(response => {
                let existingObj = this;
                const config = {
                    headers: {
                        'content-type': 'multipart/form-data'
                    }
                }

                const formData = new FormData();
                formData.append('county', this.county);
                formData.append('country', this.country);
                formData.append('town', this.town);
                formData.append('description', this.description);
                formData.append('address', this.address);
                formData.append('bedroom', this.bedroom);
                formData.append('bathroom', this.bathroom);
                formData.append('price', this.price);
                formData.append('type', this.type);
                formData.append('propertytype', this.propertytype);
                formData.append('file', this.img);

                this.$axios.post(`/api/posts/update/${this.$route.params.id}`, formData, config)
                .then(response => {
                    existingObj.strError = "";
                    existingObj.strSuccess = response.data.success;
                })
                .catch(function(error) {
                    existingObj.strSuccess ="";
                    existingObj.strError = error.response.data.message;
                });
            });
        }

    },
    beforeRouteEnter(to, from, next) {
        if (!window.Laravel.isLoggedin) {
            window.location.href = "/";
        }
        next();
    }
}

</script>