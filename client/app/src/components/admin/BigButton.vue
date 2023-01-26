<template>
   <div class="add-button">
    
        <a href={{buttonLink}}><div class="button-action">{{buttonName}}</div></a>
    </div>
</template>

<script>
import { stringLiteral } from '@babel/types';

export default {
 props: {
    buttonName: string,
    buttonLink: string
 }
}
</script>


<style>
    .add-button {
        background-color: #329E63;
        margin-bottom: 12px;
        overflow: hidden;
        border-radius: 8px;
        padding: 62px 122px 62px 121px;
        display: flex;
        align-items: center;
        height: 16px;
    }
    .button-action {
        font-family: "arial";
        font-size: 16px;
        font-weight: 600;
        color: #FFFFFF;
        text-align: center;
    }
</style>
