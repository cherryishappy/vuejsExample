<template>
<v-layout row>
  <v-flex xs12 lg12 mt-1>
     <div id="vue-app">
       <textHeaderRama title="cherry" msg1="SS1" />
       <textHeaderRama title="Thirikan Test" msg1="SS2" />
       <textHeaderRama title="test title" msg1="SS3"/>

       <dropdownComment/>

       <callcenter programName="ViewDoc"  devId="015785"/>
       <callcenter programName="APP"  />

     </div>


  </v-flex>
</v-layout>
</template>
<script>
import textHeaderRama from './TextHeaderRama'
import callcenter from './CallCenter'
import dropdownComment from './DropdownComment'

export default {
components: {
  textHeaderRama,
  callcenter,
  dropdownComment
},
  data () {
  }

}

</script>
