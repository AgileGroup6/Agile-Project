<template>
   <div class="input">
    <label class="left-text" for="username">Password</label>
    <input class="bar" type=password name="password" placeholder="Password">
    <span></span>
    <!-- <div class="icons"><img alt="" class="shape" src="https://static.overlay-tech.com/assets/39f3f2a5-b7ab-4f4f-b7f2-1d624c9a2a0b.svg"/></div> -->
  </div>
</template>
<script>
// export default {
//     props: {
//         Text: {
//             type: String,
//             default: () => "Label",
//         },
//         TxType: {
//             type: String,
//             default: () => "Label",
//         },
//     },
// };

</script>

<style lang="scss" scoped>

.input {
    background-color: #FFFFFF;
    margin-bottom: 24px;
    width: 350px;
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    align-self: stretch;
  }

  .bar {
    border-radius: 4px;
    padding: 7px 11px;
    display: flex;
    align-items: center;
    align-self: stretch;
    border: 1px solid #000000;
  }

  .left-text {
    width: 350px;
    font-size: 14px;
    font-weight: 600;
    line-height: normal;
    color: #191D23;
    flex: 1;
    margin-bottom: 4px;
  }

</style>