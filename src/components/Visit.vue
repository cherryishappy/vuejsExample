<template>
<v-layout row>
  <v-flex xs12 lg12 mt-1>
  <template>
<v-container fluid>
  <v-layout row>
    <v-flex xs6 order-lg2>
      <v-card  tile flat color="secondary">
        <ListDataEtc/>
      </v-card>
    </v-flex>
    <v-flex xs6>
       <v-layout row wrap>
       <v-flex d-flex>
       <v-layout row wrap>
         <v-flex xs3 lg3 order-lg1>
           <v-card  tile flat color="secondary" class="text-xs-left">
             <div class="v-avatar white lighten-4">
                   <img src="https://cdn.vuetifyjs.com/images/lists/1.jpg" alt="avatar">
             </div>
           </v-card>
         </v-flex>
         <v-flex xs9 lg9 order-lg2><v-card  tile flat color="secondary">
           <v-card-text class="headline text-xs-left">MRN 5107857</v-card-text>
           <v-card-text class="title text-xs-left">Ali Connors</v-card-text>
           </v-card>
         </v-flex>
       </v-layout>


        </v-flex>

       </v-layout>
    </v-flex>
  </v-layout>

 <v-layout row>
   <v-flex d-flex xs12 lg12>
      <v-card color="indigo" dark>
        <v-card-text>zz</v-card-text>
      </v-card>
    </v-flex>
 </v-layout>

  <v-layout row>
    <v-flex xs4 order-md2 order-xs1>
      <v-card dark tile flat color="red lighten-1">
        <v-card-text>#1</v-card-text>
      </v-card>
    </v-flex>
    <v-flex xs4 order-md3 order-xs2>
      <v-card dark tile flat color="red lighten-2">
        <v-card-text>#2</v-card-text>
      </v-card>
    </v-flex>
    <v-flex xs4 order-md1 order-xs3>
      <v-card dark tile flat color="red darken-1">
        <v-card-text>#3</v-card-text>
      </v-card>
    </v-flex>
  </v-layout>
  <v-layout row wrap>
    <v-flex xs12 sm6 md3 order-md4 order-sm2>
      <v-card dark tile flat color="red darken-2">
        <v-card-text>#1</v-card-text>
      </v-card>
    </v-flex>
    <v-flex xs12 sm6 md3 order-md3 order-sm1>
      <v-card dark tile flat color="deep-orange lighten-1">
        <v-card-text>#2</v-card-text>
      </v-card>
    </v-flex>
    <v-flex xs12 sm6 md3 order-md2 order-sm4>
      <v-card dark tile flat color="deep-orange darken-3">
        <v-card-text>#3</v-card-text>
      </v-card>
    </v-flex>
    <v-flex xs12 sm6 md3 order-md1 order-sm3>
      <v-card dark tile flat color="deep-orange">
        <v-card-text>#4</v-card-text>
      </v-card>
    </v-flex>
  </v-layout>
</v-container>
</template>


  </v-flex>
</v-layout>
</template>
<script>
import ListDataEtc from './ListDataEtc'

  export default {
  components: {
    ListDataEtc
  },
    data () {
    },

  }
</script>
