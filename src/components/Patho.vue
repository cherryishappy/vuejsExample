<template>
<v-layout row>
  <v-flex xs12 lg12 mt-1>
     <div>
       <v-text-field v-model="firstname" label="firstname"></v-text-field>


         <hr>
         <h1>2 Way Data Binding</h1>
         <p>Website :<a v-bind:href="website">click link..</a></p>
         <input type ="text" name="" v-bind:value="userName">
         <input type ="text" name="" v-bind:value="address">
         <v-text-field
               v-model="nickname"
               :rules="nameRules"
               :counter="10"
               label="nickname"
               required
        ></v-text-field>
         Count Text :<input type ="text" v-on:keyup.enter="addCount(0)" >
         <h2>Count :{{count}}</h2>

         <h2>Firstname :{{getFirstName()}}</h2>
         <h2>Nickname :{{setNickName('Toy')}}</h2>
         <h3>userName :{{userName}}</h3>
         <h3>address : {{address}}</h3>
         <h4>Job :{{job}}</h4>

         <h4>Age :{{age}}</h4>

         <v-btn color="info" v-on:click="addAge()"><v-icon>add_circle_outline</v-icon>&nbspAddAge</v-btn>
         <v-btn color="info" v-on:click="subtractAge()" ><v-icon>remove_circle_outline</v-icon>&nbspSubtractAge</v-btn>
     </div>


  </v-flex>
</v-layout>
</template>
<script>

export default({
  components: {
  },
  data () {
     return{
       firstname:"Thitikan Choeibamrung",
       nickname:"Cherry",
       job :"Dev",
       age:20,
       userName:"cherryishappy",
       address:"111/113",
       status:false,
       count:0,
       website:"http://webdemo:8080/mr/",

     }
  },
  methods:{
      getFirstName:function() {
        return this.firstname
      },
      setNickName:function(n) {
        return this.nickname = n
      },
      addAge:function() {
        this.age++;
        //console.log(this.age);
      },
      subtractAge:function () {
        this.age--;
        //console.log(this.age);
      },
      addCount:function() {
        this.count++;
        //console.log(this.age);
      }
  }
})

</script>
