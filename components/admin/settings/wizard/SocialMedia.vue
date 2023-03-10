<template>
  <div>
    <div class="row">
      <div class="col-sm-4">
        <div class="form-group my-3">
          <ValidationProvider
            vid="email"
            :name="$t('panel.settings.email')"
            rules="required|min:2|email"
            v-slot="{ errors }"
          >
            <label for="email" class="mb-5">{{
              $t("panel.settings.email")
            }}</label>
            <input
              id="email"
              class="form-control form-control-sm rounded-0"
              :placeholder="$t('panel.settings.email')"
              type="text"
              required
              :value="email"
              @input="$emit('update:email', $event.target.value)"
            />
            <span class="mt-5 d-block text-danger">{{ errors[0] }}</span>
          </ValidationProvider>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="form-group my-3">
          <ValidationProvider
            vid="facebook"
            :name="$t('panel.settings.facebook')"
            rules="min:2"
            v-slot="{ errors }"
          >
            <label for="facebook" class="mb-5">{{
              $t("panel.settings.facebook")
            }}</label>
            <input
              id="facebook"
              class="form-control form-control-sm rounded-0"
              :placeholder="$t('panel.settings.facebook')"
              type="text"
              :value="facebook"
              @input="$emit('update:facebook', $event.target.value)"
            />
            <span class="mt-5 d-block text-danger">{{ errors[0] }}</span>
          </ValidationProvider>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="form-group my-3">
          <ValidationProvider
            vid="instagram"
            :name="$t('panel.settings.instagram')"
            rules="min:2"
            v-slot="{ errors }"
          >
            <label for="instagram" class="mb-5">{{
              $t("panel.settings.instagram")
            }}</label>
            <input
              id="instagram"
              class="form-control form-control-sm rounded-0"
              :placeholder="$t('panel.settings.instagram')"
              type="text"
              :value="instagram"
              @input="$emit('update:instagram', $event.target.value)"
            />
            <span class="mt-5 d-block text-danger">{{ errors[0] }}</span>
          </ValidationProvider>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="form-group my-3">
          <ValidationProvider
            vid="linkedin"
            :name="$t('panel.settings.linkedin')"
            rules="min:2"
            v-slot="{ errors }"
          >
            <label for="linkedin" class="mb-5">{{
              $t("panel.settings.linkedin")
            }}</label>
            <input
              id="linkedin"
              class="form-control form-control-sm rounded-0"
              :placeholder="$t('panel.settings.linkedin')"
              type="text"
              :value="linkedin"
              @input="$emit('update:linkedin', $event.target.value)"
            />
            <span class="mt-5 d-block text-danger">{{ errors[0] }}</span>
          </ValidationProvider>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="form-group my-3">
          <ValidationProvider
            vid="youtube"
            :name="$t('panel.settings.youtube')"
            rules="min:2"
            v-slot="{ errors }"
          >
            <label for="youtube" class="mb-5">{{
              $t("panel.settings.youtube")
            }}</label>
            <input
              id="youtube"
              class="form-control form-control-sm rounded-0"
              :placeholder="$t('panel.settings.youtube')"
              type="text"
              :value="youtube"
              @input="$emit('update:youtube', $event.target.value)"
            />
            <span class="mt-5 d-block text-danger">{{ errors[0] }}</span>
          </ValidationProvider>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { ValidationProvider } from "vee-validate";
export default {
  components: {
    ValidationProvider,
  },
  props: [
    "email",
    "facebook",
    "instagram",
    "linkedin",
    "youtube",
  ],
};
</script>