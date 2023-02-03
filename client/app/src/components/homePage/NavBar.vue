<template>
    <div>
        <div style="margin: 10px" class="hamburger" :class="{'is-active': isActive}" @click="toggleActive(); showSidebar = !showSidebar">
            <div class="hamburger-box">
                <div class="hamburger-inner"></div>
            </div>
        </div>
        <b-sidebar v-if="showSidebar" id="my-sidebar" class="p-3" :style="{ backgroundColor: 'white', borderColor: 'green' }">
            <ul>
                <li class="nav-item">
                    <router-link to="/" class="link">HOME</router-link>
                </li>
                <li class="nav-item">
                    <router-link to="/about" class="link">BROWSE RECIPES</router-link>
                </li>
                <li class="nav-item">
                    <router-link to="/contact" class="link">BROWSE INGREDIENTS</router-link>
                </li>
            </ul>
        </b-sidebar>
    </div>
</template>

<script>
import ButtonComponent from "@/components/homePage/ButtonComponent.vue";
export default {
    data() {
        return {
            showSidebar: false,
            isActive: false,
        };
    },
    methods: {
        toggleActive() {
            this.isActive = !this.isActive;
        }
    }
};
</script>

<style>
.link{
        text-decoration: none;
        color: inherit;
    }

    #my-sidebar {
        position: absolute;
        top: 0;
        right: 0;
        width: 300px;
        height: 100%;
        z-index: 999;
        border: 1px solid green;
        display: flex;
        align-items: center;
        flex-direction: column;
    }

    .nav-item {
        display: block;
        margin-top: 40px;
        box-sizing: border-box;
        text-align: center;
    }

    .hamburger {
        position: relative;
        display: inline-block;
        cursor: pointer;
    }

    .hamburger-box {
        width: 40px;
        height: 24px;
        position: relative;
        transform: rotate(0deg);
        transition: .5s ease-in-out;
    }

    .hamburger-inner {
        display: block;
        top: 50%;
        margin-top: -2px;
    }

    .hamburger-inner,
    .hamburger-inner::before,
    .hamburger-inner::after {
        width: 40px;
        height: 4px;
        background-color: #329E63;;
        border-radius: 4px;
        position: absolute;
        transition: .5s ease-in-out;
    }

    .hamburger-inner::before,
    .hamburger-inner::after {
        content: "";
        display: block;
    }

    .hamburger-inner::before {
        top: -10px;
    }

    .hamburger-inner::after {
        bottom: -10px;
    }

    .is-active .hamburger-inner {
        transform: rotate(45deg);
    }

    .is-active .hamburger-inner::before {
        top: 0;
        opacity: 0;
    }

    .is-active .hamburger-inner::after {
        bottom: 0;
        transform: rotate(-90deg);
    }
</style>