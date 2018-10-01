<template>
<v-layout row>
  <v-flex xs12 lg12 mt-1>
     <div>
       <v-layout row wrap>
          <v-flex xs4>
            <v-checkbox v-model="foods" label="pizza" value="pizza"></v-checkbox>
          </v-flex>
          <v-flex xs4>
            <v-checkbox v-model="foods" label="cake" value="cake"></v-checkbox>
          </v-flex>
          <v-flex xs4>
            <v-checkbox v-model="foods" label="mama" value="mama"></v-checkbox>
          </v-flex>
      </v-layout>
      <h3>Gender :</h3>
      <v-radio-group v-model="gender" row :mandatory="false">
        <v-radio label="Female" value="หญิง" ></v-radio>
        <v-radio label="Male" value="ชาย" ></v-radio>
      </v-radio-group>
      <v-select
         :items="jobs"
         label="Standard"
         v-model="job"
       ></v-select>

         <hr>

         <p>Food :{{ foods }}</p>
         <p>Gender :{{ gender }}</p>
         <p>Jobs :{{ job }}</p>

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
       foods: [],
       gender:'',
       jobs: ['แม่ค้า', 'นักเรียน', 'ครู', 'แม่บ้าน'],
       job :''
     }
  },
  methods:{

  }
})

</script>
