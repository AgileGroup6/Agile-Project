<template>
    <div class="input">
      <label class="left-text" for="username">Username</label>
      <input class="bar" type="text" name="username" placeholder="Username" required>
    </div>
</template>

<!-- <script>
  export default {
    props: {
      User: {
        type: String
      },
    },
  };
</script> -->

<style>

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