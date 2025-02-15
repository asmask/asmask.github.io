<template>
  <section class="section section-lg section-shaped overflow-hidden my-0" id="contact" >
    <div class="shape shape-style-1 shape-default shape-skew">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      <span></span>
    </div>
    <div class="container py-5">
      <div class="row justify-content-center">
        <div class="col-lg-6">
          <div class="card p-4 shadow-lg">
            <h2 class="text-center mb-4">Contact Me</h2>
            <form @submit.prevent="sendEmail">
              <div class="form-group">
                <label for="name">
                  Name
                  <span class="text-danger">*</span>
                </label>
                <input
                  v-model="form.name"
                  type="text"
                  class="form-control"
                  id="name"
                  @blur="validateField('name')"
                />
                <small v-if="errors.name" class="text-danger">
                  {{ errors.name }}
                </small>
              </div>

              <div class="form-group">
                <label for="email">
                  Email
                  <span class="text-danger">*</span>
                </label>
                <input
                  v-model="form.email"
                  type="email"
                  class="form-control"
                  id="email"
                  @blur="validateField('email')"
                />
                <small v-if="errors.email" class="text-danger">
                  {{ errors.email }}
                </small>
              </div>

              <div class="form-group">
                <label for="message">
                  Message
                  <span class="text-danger">*</span>
                </label>
                <textarea
                  v-model="form.message"
                  class="form-control"
                  id="message"
                  rows="4"
                  @blur="validateField('message')"
                ></textarea>
                <small v-if="errors.message" class="text-danger">
                  {{ errors.message }}
                </small>
              </div>

              <button
                type="submit"
                class="btn btn-primary btn-block"
                :disabled="!isFormValid || loading"
              >
                {{ loading ? 'Sending...' : 'Send Message' }}
              </button>
            </form>

            <div v-if="successMessage" class="alert alert-success mt-3">
              {{ successMessage }}
            </div>
            <div v-if="errorMessage" class="alert alert-danger mt-3">
              {{ errorMessage }}
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
import emailjs from 'emailjs-com'

export default {
  data() {
    return {
      form: {
        name: '',
        email: '',
        message: '',
      },
      errors: {
        name: '',
        email: '',
        message: '',
      },
      loading: false,
      successMessage: '',
      errorMessage: '',
    }
  },
  computed: {
    isFormValid() {
      return (
        this.form.name &&
        this.isValidEmail(this.form.email) &&
        this.form.message
      )
    },
  },
  methods: {
    validateField(field) {
      if (!this.form[field]) {
        this.errors[field] = `${
          field.charAt(0).toUpperCase() + field.slice(1)
        } is required`
      } else if (field === 'email' && !this.isValidEmail(this.form.email)) {
        this.errors.email = 'Invalid email format'
      } else {
        this.errors[field] = ''
      }
    },
    isValidEmail(email) {
      const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/
      return emailRegex.test(email)
    },
    sendEmail() {
      this.loading = true
      this.successMessage = ''
      this.errorMessage = ''

      // Revalidate fields before sending
      this.validateField('name')
      this.validateField('email')
      this.validateField('message')

      if (!this.isFormValid) {
        this.loading = false
        return
      }

      emailjs
        .send(
          import.meta.env.VITE_EMAILJS_SERVICE_ID,
          import.meta.env.VITE_EMAILJS_TEMPLATE_ID,
          {
            from_name: this.form.name,
            from_email: this.form.email,
            message: this.form.message,
          },
          import.meta.env.VITE_EMAILJS_PUBLIC_KEY,
        )
        .then(() => {
          this.successMessage = 'Your message has been sent successfully!'
          this.form = { name: '', email: '', message: '' }
        })
        .catch(() => {
          this.errorMessage = 'Failed to send message. Please try again.'
        })
    },
  },
}
</script>

<style scoped>
.card {
  border-radius: 10px;
}
.text-danger {
  font-size: 0.875rem;
}
</style>
