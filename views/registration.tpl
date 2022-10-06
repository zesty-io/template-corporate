<section class="content-accent">
    <div class="flex flex-col items-center justify-center px-6 py-8 mx-auto min-h-screen md:h-screen lg:py-0">
        {{if {post_var.email} }}
        <h1 class="font-bold font-sans break-normal text-black pt-6 pb-2 text-3xl md:text-2xl sm: text-sm">{{this.submit_message}}</h1>
        {{else }}
        <h1 class="font-bold font-serif Georgia break-normal text-gray-900 pb-2 text-3xl md:text-4xl">{{this.title}}</h1>
        <h3 class="text-xl font-serif Georgia">{{this.description}}</h3>
        <hr class="border-b-16 mb-8">
        <div class="w-full bg-white rounded-lg shadow dark:border md:mt-0 sm:max-w-md xl:p-0 dark:bg-gray-800 dark:border-gray-700">
            <div class="p-6 space-y-4 md:space-y-6 sm:p-8" id="register">
                <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-white">{{this.form_title}}</h1>
                <form class="space-y-4 md:space-y-6" action="#" method="POST" enctype="multipart/form-data">
                    <input name="zlf" value="Form Request" type="hidden">
                    <input name="zcf" value="1" type="hidden">
                    <input type="hidden" name="{{setting.contact-form.honeypot}}" value="">
                        <div>
                            <label for="email" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">{{this.label_input_1}}</label>
                            <input type="email" name="email" id="email" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="name@company.com" required="">
                        </div>
                        <div>
                            <label for="name" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">{{this.label_input_2}}</label>
                            <input type="text" name="name" id="name" placeholder="John Doe" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required="">
                        </div>
                        <div>
                            <label for="message" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">{{this.label_input_3}}</label>
                            <textarea type="message" name="message" id="message" placeholder="" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required="">{{this.message_placeholder}}</textarea>
                        </div>
                        <button type="submit" class="bg-transparent hover:bg-blue-500 text-blue-700 font-semibold hover:text-white py-2 px-4 border border-blue-500 hover:border-transparent rounded">Submit</button>
                </form>
            </div>
        </div>
        {{end-if}}
    </div>
</section>