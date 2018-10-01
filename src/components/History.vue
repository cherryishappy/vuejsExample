<template>
<v-layout row>
  <v-flex xs12 lg12 mt-1>
     <div>
        <v-btn color="info" v-on:click="like=!like"  ><v-icon>thumb_up</v-icon>&nbspLike</v-btn>
         <h1 v-if="like">Hello Like</h1>
         <h1>{{product[0]}}</h1>
         <ul>
           <li v-for="p in product">{{p}}</li>
         </ul>
         <ul>
           <li v-for="emp in employee">{{emp.name}}  อายุ:{{emp.age}} status:{{emp.status}}</li>
         </ul>
         <hr>
          <span>ชื่อพนักงาน</span>
          <input type ="text" name="" v-model="newData.empName">
          <span>เงินเดือน</span>
          <input type ="text" name="" v-model="newData.salary">
          <br>
            <v-btn color="info" v-on:click="addEmp"  ><v-icon>save</v-icon>&nbspบันทึกข้อมูล</v-btn>
           <br>
          <ul>
               <li v-for="emp in empGroup">
                  {{emp.empName}} ได้เงินเดือน {{emp.salary}}
               </li>
          </ul>
          <h1>จำนวนเงินทั้งหมด :{{summation}}</h1>
          <h1>ค่าเฉลี่ย :{{avg}}</h1>
          <h1>methods จำนวนเงินทั้งหมด :{{fsummation(5,10)}}</h1>
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
      like:false,
      product:['แก้ว','กระเป๋า','หนังสือ','ดินสอ','ยางลบ'],
      employee:[
        {name:'marry',age:18,status:false},
        {name:'เกี่ยง',age:25,status:true},
        {name:'เอราวัณ',age:43,status:false},
        {name:'แครอล',age:27,status:true}
      ],
      newData:{
        empName:'',
        salary:0
      },
      empGroup:[
        {
          empName:'Cherry',
          salary:5000
        },
        {
          empName:'Off',
          salary:5002
        },
        {
          empName:'Kan',
          salary:5009
        }
      ]
     }
  },
  methods:{
    addEmp:function () {
         this.empGroup.push({
           empName: this.newData.empName,
           salary: this.newData.salary
         });
         this.newData.empName='';
         this.newData.salary=0;
    },
    showMessage:function() {
      alert("บันทึกข้อมูลเรียบร้อย!!!!");
    },
    fsummation: function(a,b) {
      var sum =a+b;
      return sum;
    }
  },
  computed:{
    //แยกมาจัดการด้านคำนวณ ไม่มีการรับค่าส่งค่า getter methods
    //ตรวจสอบความเปลี่ยนแปลงให้เราเอง
    summation:function() {
        var sum =this.empGroup.reduce(function(value, data) {
        return value + Number(data.salary);
        //0+5000
        //5000+5002
      },0);
      return sum;
    },
    avg:function() {
       var sum = this.empGroup.reduce(function(value, data) {
         return value + Number(data.salary);
       },0);
       return sum/this.empGroup.length;
    }
  },
  watch:{
    //หลังจากฟังชั่น Avg ทำงานเสร็จ
    avg:function() {
       this.showMessage();
    }
  }

})

</script>
