<template>
  <v-container grid-list-md text-xs-center>
    <v-layout row wrap>
      <v-flex xs7 align="center">
        <v-card dark color="secondary">
          <div align="center">
                  <br>
                  <img src="https://randomuser.me/api/portraits/men/86.jpg" ><br><br>
                  <font color ="black"><b>MRN:</b> 4391010</font>&nbsp; <font color ="black"><b>ชื่อ-สกุล:</b> วิลเลี่ยม เล็บขบ</font>
                  <br> <font color ="black"><b>อายุ:</b> 30 ปี 2 เดือน 1 วัน</font> &nbsp; <font color ="black"><b>เพศ:</b> ชาย</font>
                  &nbsp; <font color ="black"><b>สถานภาพ:</b> โสด</font>
                   &nbsp; <font color ="black"><b>โทรศัพท์:</b> 0152525255</font>  <br>
                   <font color ="black"><b>สิทธิ:</b> ประกันสังคมในเขต</font> &nbsp;
                  <font color ="black"><b>ประวัติการแพ้ยา:</b> ไม่มี</font>



        </div>

          <v-list-tile-avatar>

          </v-list-tile-avatar>
        </v-card>
      </v-flex>
      <v-flex xs5>
        <v-card dark color="secondary" >
        <v-container fluid>
          <v-slide-y-transition mode="out-in">
            <v-layout row wrap column align-right>

                    <v-data-table
                      :headers="headers"
                      :items="vs"
                      hide-actions
                      class="elevation-1"

                    >
                    <template slot="items" slot-scope="props">
                      <td>{{ props.item.name }}</td>
                      <td class="text-xs-left">{{ props.item.WEI }}</td>
                      <td class="text-xs-left">{{ props.item.HEI }}</td>
                      <td class="text-xs-left">{{ props.item.C }}</td>
                      <td class="text-xs-left">{{ props.item.H }}</td>
                      <td class="text-xs-left">{{ props.item.P }}</td>


                    </template>

                    </v-data-table>
                </v-layout>
              </v-slide-y-transition>
            </v-container>


        </v-card>
        <v-flex xs15>

          <v-card color="#FF0000" >
              <font size="10px" color="white"> BMI : 31.2  </font> <br>
              <font size="6px" color="white"> อ้วนมาก</font>
          </v-card>
        </v-flex>
      </v-flex>




    </v-layout>
  </v-container>



</template>

<script>

  export default {
    data () {
      return {
        headers: [
          {
            text: '',
            align: 'left',
            sortable: false,
            value: 'name'
          },
          { text: 'น้ำหนัก', value: 'WEI' },
          { text: 'ส่วนสูง', value: 'HEI' },
          { text: 'อุณหภูมิ', value: 'C' },
          { text: 'ความดันโลหิต', value: 'H' },
          { text: 'ชีพจร', value: 'P' },


        ],
        vs: [
          {
              "WEI": "80",
              "HEI": "160",
              "C": "35 C",
              "H": "100/70",
              "P": "80",
            },



        ]
      }
    }
  }

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
margin: 40px 0 0;
}
ul {
list-style-type: none;
padding: 0;
}
li {
display: inline-block;
margin: 0 10px;
}
a {
color: #42b983;
}
</style>
