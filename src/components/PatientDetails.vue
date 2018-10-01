<template>
  <v-layout row>
    <v-flex xs12 lg12 mt-1>
    <v-card height="572px">
        <div id="patho" ><Patho/></div>
        <div id="visit" style="display:none;"><Visit/></div>
        <div id="cyto" style="display:none;"><Cyto/></div>
        <div id="history" style="display:none;"><History/></div>

 <v-bottom-nav
   :active.sync="bottomNav"
   :color="color"
   :value="true"
   absolute
   shift
 >
   <v-btn dark v-on:click="clkBtnDetail('visit')">
     <span>Visit</span>
     <v-icon>ondemand_video</v-icon>
   </v-btn>

   <v-btn dark v-on:click="clkBtnDetail('patho')">
     <span>Patho</span>
     <v-icon>music_note</v-icon>
   </v-btn>

   <v-btn dark v-on:click="clkBtnDetail('cyto')">
     <span>Cyto</span>
     <v-icon>book</v-icon>
   </v-btn>

   <v-btn dark v-on:click="clkBtnDetail('history')">
     <span>Medication History</span>
     <v-icon>image</v-icon>
   </v-btn>

   <v-btn dark>
     <span>X-Ray</span>
     <v-icon>accessibility_new</v-icon>
   </v-btn>
 </v-bottom-nav>
</v-card>
    </v-flex>
  </v-layout>
</template>
<script>
import Visit from './Visit'
import Patho from './Patho'
import Cyto from './Cyto'
import History from './History'


  export default {
  components: {
    Visit,
    Patho,
    Cyto,
    History

  },
    data () {
      return {
        bottomNav: 1,
        pageName : "patho",
        nameComponentPages : "patho"

      }


    },

    computed: {
      color () {
        switch (this.bottomNav) {
          case 0: return 'blue-grey'
          case 1: return 'teal'
          case 2: return 'brown'
          case 3: return 'indigo'
          case 4: return '#1867c0'
        }
      }
    },
    methods:{
      clkBtnDetail(pName) {
         this.pageName = pName;
         this.nameComponentPages= pName;
         document.getElementById(this.pageName).style.display = "block";
         if(pName=="visit"){
              document.getElementById('patho').style.display = "none";
              document.getElementById('cyto').style.display = "none";
              document.getElementById('history').style.display = "none";
         }else if (pName=="patho") {
              document.getElementById('visit').style.display = "none";
              document.getElementById('cyto').style.display = "none";
              document.getElementById('history').style.display = "none";
         }else if (pName=="cyto") {
              document.getElementById('visit').style.display = "none";
              document.getElementById('patho').style.display = "none";
              document.getElementById('history').style.display = "none";
         }else if (pName=="history") {
              document.getElementById('visit').style.display = "none";
              document.getElementById('patho').style.display = "none";
              document.getElementById('cyto').style.display = "none";

         }


     }

    }
  }
</script>
