<template>
  <v-container grid-list-md text-xs-center>

    <v-layout row wrap>

         <v-flex xs12 lg12 mt-1>
           <v-card  color="secondary" class="px-2">
              <v-layout row wrap>
              <v-flex lg2>

              <v-form v-model="valid">
                <v-text-field
                mask="#######"
                v-model="mrn"
                :rules="mrnRules"
                :counter="7"
                label="MRN"
                required
                append-icon="search"
                ></v-text-field>
                </v-form>

              </v-flex>
              <v-flex lg1>
              </v-flex>
              <v-flex lg4>
                <v-card-text class="body-2 text-sm-left">แผนก : <font color ="#1867c0">{{select.abbr}} {{select.state}}</font></v-card-text>

              </v-flex>
              <v-flex lg3>
              <v-card-text class="body-2 text-sm-left">คลินิก : <font color ="#1867c0">{{selectSdloc.sdlocId}} {{selectSdloc.sdlocName}}</font></v-card-text>

              </v-flex>
              <v-flex lg2>
              <div class="text-xs-left">
                  <v-bottom-sheet v-model="sheet">
                    <v-btn
                      slot="activator"
                      color="#1867c0"
                      dark
                      full-width ="true"
                    > <v-icon>cached</v-icon> เปลี่ยนแผนก/คลินิก
                    </v-btn>

                    <v-list>
                    <v-layout row wrap>
                      <v-flex xs1>  <v-subheader>แผนก</v-subheader></v-flex>
                      <v-flex xs4>
                        <v-select
                          v-model="select"
                          :hint="`${select.state}, ${select.abbr}`"
                          :items="items"
                          item-text="state"
                          item-value="abbr"
                          label="Select"
                          persistent-hint
                          return-object
                          single-line
                        ></v-select>
                      </v-flex>
                      <v-flex xs7></v-flex>
                    </v-layout>

                    <v-layout row wrap>
                    <v-flex xs1>  <v-subheader>คลินิก</v-subheader></v-flex>
                    <v-flex xs4>
                      <v-select
                        v-model="selectSdloc"
                        :hint="`${selectSdloc.sdlocName}, ${selectSdloc.sdlocId}`"
                        :items="itemsSdloc"
                        item-text="sdlocName"
                        item-value="sdlocId"
                        label="Select"
                        persistent-hint
                        return-object
                        single-line
                      ></v-select>
                    </v-flex>
                      <v-flex xs7></v-flex>
                    </v-layout>

                    </v-list>
                  </v-bottom-sheet>
                </div>

              </v-flex>


            </v-layout>



          </v-card>
        </v-flex>
        <v-flex xs3 lg3>
          <PatientQueue/>
        </v-flex>
      <v-flex xs9 lg9>
        <PatientDetails/>
      </v-flex>

      <v-flex v-for="i in 2" :key="`6${i}`" xs6>
        <v-card dark color="secondary">
          <v-card-text class="px-0">6</v-card-text>
        </v-card>
      </v-flex>
      <v-flex v-for="i in 3" :key="`4${i}`" xs4>
        <v-card dark color="primary">
          <v-card-text class="px-0">4</v-card-text>
        </v-card>
      </v-flex>
      <v-flex v-for="i in 4" :key="`3${i}`" xs3>
        <v-card dark color="secondary">
          <v-card-text class="px-0">3</v-card-text>
        </v-card>
      </v-flex>
      <v-flex v-for="i in 6" :key="`2${i}`" xs2>
        <v-card dark color="primary">
          <v-card-text class="px-0">2</v-card-text>
        </v-card>
      </v-flex>
      <v-flex v-for="i in 12" :key="`1${i}`" xs1>
        <v-card dark color="secondary">
          <v-card-text class="px-0">1</v-card-text>
        </v-card>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
import MrnSearch from './MrnSearch'
import PatientQueue from './PatientQueue'
import PatientDetails from './PatientDetails'


  export default {
  components: {
    MrnSearch,
    PatientQueue,
    PatientDetails
  },
    data: () => ({
      valid: false,
      mrn: "",
      mrnRules: [
        v => v.length <= 7 || 'MRN have 7 characters'
      ],
      select: { state: 'หน่วยตรวจผู้ป่วยนอกอายุรกรรม', abbr: 'SDMD' },
      items: [
        { state: 'หน่วยตรวจผู้ป่วยนอกอายุรกรรม', abbr: 'SDMD' },
        { state: 'หน่วยตรวจผู้ป่วยนอกศัลยกรรม', abbr: 'SDSU' },
        { state: 'หน่วยตรวจผู้ป่วยนอกเวชศาสตร์ครอบครัว', abbr: 'OFM' },
        { state: 'หน่วยตรวจพรีเมี่ยมเร่งด่วน', abbr: 'SDPU' },
        { state: 'ห้องศึกษาสรีวิทยาของระบบประสาทส่วนปลายและกล้ามเนื้อด้วยไฟฟ้า', abbr: 'JK62' }
      ],
      selectSdloc: { sdlocName: 'ทั่วไป', sdlocId: 'SDOMD01' },
      itemsSdloc: [
        { sdlocName: 'Anticoagulation Clinic', sdlocId: 'SDOMD36' },
        { sdlocName: 'CHD, PAH', sdlocId: 'SDOMD11' },
        { sdlocName: 'คลินิกรอปลูกถ่ายไต', sdlocId: 'SDOMD45' },
        { sdlocName: 'คลินิกสุขภาพจิต', sdlocId: 'SDOMD39' },
        { sdlocName: 'ทั่วไป', sdlocId: 'SDOMD01' }
      ],
      sheet: false,
      places: [
        { img: 'keep.png', title: 'SDMD หน่วยตรวจผู้ป่วยนอกอายุรกรรม' },
        { img: 'inbox.png', title: 'SDSU หน่วยตรวจผู้ป่วยนอกศัลยกรรม' },
        { img: 'hangouts.png', title: 'OFM หน่วยตรวจผู้ป่วยนอกเวชศาสตร์ครอบครัว' },
        { img: 'messenger.png', title: 'SDPU หน่วยตรวจพรีเมี่ยมเร่งด่วน' },
        { img: 'google.png', title: 'JK62 ห้องศึกษาสรีวิทยาของระบบประสาทส่วนปลายและกล้ามเนื้อด้วยไฟฟ้า' }
      ]
    })
  };
</script>
<style scoped>
.placebody {
     vertical-align: middle;
}
</style>
