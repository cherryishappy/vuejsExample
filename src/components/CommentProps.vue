<template>
  <div class="divComment1">
     <v-select
       :items="itemsDD"
       label="label"
       segmented overflow editable
       target="#target"
     ></v-select>
     <i class="h4level">Prop : {{commentpost}}</i>
  </div>

</template>
<script>
export default {
  props: ["commentpost"],
  data() {
    return {
      itemsDD: ['A','B','C','D' ]
    };
  },
  methods: {}
};
</script>
<style media="screen">
.divComment1 {
  background-color: #baffba;
}
.h4level {
  color: #779c21;
}
</style>
