<template lang="">
  <div>
    <form class="form-inline">
      <!-- v-bind used to bind input to any additional attributes and then an update event will be emitted when the input value is changed --->
      <input
        v-bind="$attrs"
        :value="modelValue"
        @input="$emit('update:modelValue', $event.target.value)"
        class="form-control mr-sm-2"
        type="search"
        placeholder="Search Ingredients"
        aria-label="Search Ingredients"
      />
    </form>
  </div>
</template>

<script>
export default {
  //Prop for modelValue which is an empty string as defualt but can have a string or number value
  props: {
    modelValue: {
      type: [String, Number],
      default: "",
    },
  },
};
</script>
<style scoped>

</style>
