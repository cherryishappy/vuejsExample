<template>
  <v-card height="800px">
    <v-navigation-drawer
      v-model="drawer"
      permanent
      absolute
    >
      <v-toolbar flat class="transparent">
        <v-list class="pa-0">
          <v-list-tile avatar>
            <v-list-tile-avatar>
              <img src="https://randomuser.me/api/portraits/men/85.jpg">
            </v-list-tile-avatar>

            <v-list-tile-content>
              <v-list-tile-title>Doctor Somchai</v-list-tile-title>
            </v-list-tile-content>
          </v-list-tile>
        </v-list>
      </v-toolbar>

      <v-list class="pt-0" dense>
        <v-divider></v-divider>
        <v-list-tile
          v-for="item in items"
          :key="item.title"
          @click="" :to="{ name: item.link}"
        >


          <v-list-tile-action>
            <v-icon>{{ item.icon }}</v-icon>
          </v-list-tile-action>
          <v-list-tile-content>
                     <v-list-tile-title>{{ item.title }}</v-list-tile-title>
          </v-list-tile-content>


        </v-list-tile>



        <v-list-group
           prepend-icon="supervisor_account"
           value="true"

         >

           <v-list-tile slot="activator">
             <v-list-tile-title>ตรวจ PlaceId (แผนก)</v-list-tile-title>
           </v-list-tile>

           <v-list-group  class="tilePlace"
             sub-group
             v-for="(place, i) in place"
              :key="i"
           >
             <v-list-tile slot="activator">
               <v-list-tile-title>{{place[0]}}</v-list-tile-title>
             </v-list-tile>

             <v-list-tile
               v-for="(sdloc, i) in sdloc"
               :key="i"
               @click="" :to="{ name: sdloc[2]}"
             >
               <v-list-tile-title v-text="sdloc[0]"></v-list-tile-title>
             </v-list-tile>

           </v-list-group>

         </v-list-group>

      </v-list>
    </v-navigation-drawer>
  </v-card>
</template>

<script>




  export default {
    data () {
      return {
        drawer: true,
        items: [
          { title: 'Home', icon: 'home', link:'home' },
          { title: 'Lab', icon: 'opacity', link:'Lab'  },
          { title: 'RamaEMR', icon: 'local_hospital', link:'RamaEMR'  },
          { title: 'About', icon: 'question_answer', link:'About'  }
        ],
        sdloc: [
          ['AAA', 'people_outline'],
          ['BBB', 'settings'],

        ],
        place: [
          ['SDMD หน่วยตรวจผู้ป่วยนอกอายุรกรรม', 'people_outline'],
          ['SDSU หน่วยตรวจผู้ป่วยนอกศัลยกรรม', 'settings'],
          ['OFM หน่วยตรวจผู้ป่วยนอกเวชศาสตร์ครอบครัว', 'settings'],
          ['SDPU หน่วยตรวจพรีเมี่ยมเร่งด่วน', 'settings'],
          ['JK62 ห้องศึกษาสรีวิทยาของระบบประสาทส่วนปลายและกล้ามเนื้อด้วยไฟฟ้า', 'settings']
        ],
        cruds: [
          ['Create', 'add','home'],
          ['Read', 'insert_drive_file','About'],
          ['Update', 'update','About'],
          ['Delete', 'delete','About']
        ],
        right: null
      }
    }
  }
</script>
<style >
.v-list__group__items--no-action .v-list__tile{
  padding-left: 2px;
 background: #e0e6fe;
}

.v-navigation-drawer v-navigation-drawer--fixed v-navigation-drawer--open theme--light{
  width: 350px;
}
.v-list__group__header__prepend-icon{
   padding-left: 5px;
}

</style>
