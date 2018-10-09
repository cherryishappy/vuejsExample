<template>
  <div class="divCallcenter">
    <p><v-icon>error</v-icon> {{ txtcallcenter }} {{programName}}</p>
    <p><v-icon>call</v-icon>{{ tel }} | {{ devId }}</p>

  </div>

</template>
<script>
export default {
  props: {
    programName: {
      type: String,
      required: true
    },
    devId: {
      type: String,
      default: "-"
    }
  },

  data() {
    return {
      txtcallcenter: "มีข้อสงสัย - แนะนำเกี่ยวกับโปรแกรม",
      tel: "โทร.4446 กด 3"
    };
  },
  methods: {}
};
</script>
<style media="screen">
.divCallcenter {
  padding: 5px;
  padding-top: 15px;
  padding-left: 15px;
  margin: 15px;
  background-color: #e1e1ff;
  text-align: left;
  width: 330px;
  color: #1e3840;
}
</style>
