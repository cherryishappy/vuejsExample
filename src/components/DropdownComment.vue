<template>
  <div class="divComment">
    <ul>
      <li v-for="comment in comments" is="commentpost">{{comment}}</li>
    </ul>
    <v-text-field
          v-model="newComment"
          :rules="nameRules"
          :counter="30"
          label="newComment"
          required
          v-on:keyup.enter="addComment"
   ></v-text-field>
    <ul>
      <li v-for="levelStar in levelStars"
        is="commentProps"
        v-bind:commentpost="levelStar"
      ></li>
    </ul>
    <commentProps/>
    <v-text-field
          v-model="newlevel"
          :rules="nameRules"
          :counter="15"
          label="newlevel"
          required
          v-on:keyup.enter="addLevelStar"
   ></v-text-field>
  </div>

</template>
<script>
import commentProps from './CommentProps'
export default({
  components: {
    commentProps
  },
  props: {

  },
  data () {
     return{
       newComment:'',
       newlevel:'',
       comments :['ดีเยี่ยม','พอใจมาก','ปานกลาง','ควรปรับปรุง'],
       levelStars :['5 Star','4 Star','3 Star']
     }
  },
  methods:{
     //เพิ่ม comment ลงไป
     addComment:function() {
        this.comments.push(this.newComment)
        this.newComment=''
     },
     addLevelStar:function() {
        this.levelStars.push(this.newlevel)
        this.newlevel=''
     }
  }
})

</script>
<style media="screen">
  .divComment{
    padding: 5px;
    padding-top:15px;
    padding-left:15px;
    margin: 15px;
    background-color:#e1ffff;
    text-align: left;
    width: 330px;
    color: #1e3840;
  }
</style>
