<template>
  <v-layout row>
    <v-flex xs12 lg12 mt-1>
      <v-card>
        <v-toolbar color="primary" dark >
            <v-icon>queue_play_next</v-icon>
          <v-toolbar-title>Queue</v-toolbar-title>

          <v-spacer></v-spacer>

          <v-btn icon v-on:click="openEditor(actionSlider)">
            <v-icon>{{idIcon}}</v-icon>
          </v-btn>
        </v-toolbar>

        <v-list three-line id="listQueue">
          <template v-for="(item, index) in items">
            <v-subheader
              v-if="item.header"
              :key="item.header"
            >
              {{ item.header }}
            </v-subheader>

            <v-divider
              v-else-if="item.divider"
              :inset="item.inset"
              :key="index"
            ></v-divider>

            <v-list-tile
              v-else
              :key="item.title"
              avatar
              @click=""
            >
              <v-list-tile-avatar>
                <img :src="item.avatar">
              </v-list-tile-avatar>

              <v-list-tile-content>
                <v-list-tile-title v-html="item.title"></v-list-tile-title>
                <v-list-tile-sub-title v-html="item.subtitle"></v-list-tile-sub-title>
              </v-list-tile-content>
            </v-list-tile>
          </template>
        </v-list>
      </v-card>
    </v-flex>
  </v-layout>
</template>
<script>

var slider= "open"


  export default {
    data () {
      return {
        items: [
          { header: 'Today' },
          {
            avatar: 'https://cdn.vuetifyjs.com/images/lists/1.jpg',
            title: 'Ali Connors',
            subtitle: "<span class='text--primary'>MRN 5107857</span> &mdash; Check in 20/9/2561 15.15"
          },
          { divider: true, inset: true },
          {
            avatar: 'https://cdn.vuetifyjs.com/images/lists/2.jpg',
            title: 'Alex<span class="grey--text text--lighten-1">4</span>',
            subtitle: "<span class='text--primary'>MRN 3107785</span> &mdash; Check in 20/9/2561 15.20"
          },
          { divider: true, inset: true },
          {
            avatar: 'https://cdn.vuetifyjs.com/images/lists/3.jpg',
            title: 'Sandra Adams',
            subtitle: "<span class='text--primary'>MRN 2450152</span> &mdash; Check in 20/9/2561 05.15"
          },
          { divider: true, inset: true },
          {
            avatar: 'https://cdn.vuetifyjs.com/images/lists/4.jpg',
            title: 'Trevor Hansen',
            subtitle: "<span class='text--primary'>MRN 0024215</span> &mdash; Check in 20/9/2561 06.00"
          },
          { divider: true, inset: true },
          {
            avatar: 'https://cdn.vuetifyjs.com/images/lists/5.jpg',
            title: 'Britta Holt',
            subtitle: "<span class='text--primary'>MRN 4208888</span> &mdash; Check in 20/9/2561 09.25"
          }
        ],
        actionSlider:"close",
        idIcon :"expand_more"

      }
    },
    methods: {
      openEditor(actionSlider) {
            if(actionSlider==="open"){
                //alert("if"+actionSlider);
                this.actionSlider ="close";
                this.idIcon ="expand_more";
                document.getElementById("listQueue").style.display = "block";

            }else{
            //alert(actionSlider);
            this.actionSlider ="open";
            this.idIcon ="expand_less";
            document.getElementById("listQueue").style.display = "none";
            }
      }
    }
  }
</script>
