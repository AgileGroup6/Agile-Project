<template lang="">
  <div>
    <form class="form-inline">
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
  props: {
    modelValue: {
      type: [String, Number],
      default: "",
    },
  },
};
</script>