<template>
  <div class="divComment1">
     <v-checkbox label="label" v-model="value" value="value">checkbox</v-checkbox>
     <i class="h4level">Prop : {{commentpost}}</i>
  </div>

</template>
<script>
export default {
  props: ["commentpost"],
  data() {
    return {};
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
