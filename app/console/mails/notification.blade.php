<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <style media="screen">
    body{
      color: black !important;
    }
      .fluid-container, .container {
        width: 100%;
        padding-right: 15px;
        padding-left: 15px;
        margin-right: auto;
        margin-left: auto;
      }
      .container {
        min-width: 992px !important;
      }
      @media (min-width: 576px) {
        .container-sm, .container {
          max-width: 540px;
        }
      }
      @media (min-width: 768px) {
        .container-md, .container-sm, .container {
          max-width: 720px;
        }
      }
      @media (min-width: 992px) {
        .container-lg, .container-md, .container-sm, .container {
          max-width: 960px;
        }
      }
      @media (min-width: 1200px) {
        .container-xl, .container-lg, .container-md, .container-sm, .container {
          max-width: 1140px;
        }
      }
      .p-4 {
        padding: 1.5rem !important;
      }

      .pt-4,
      .py-4 {
        padding-top: 1.5rem !important;
      }

      .pr-4,
      .px-4 {
        padding-right: 1.5rem !important;
      }

      .pb-4,
      .py-4 {
        padding-bottom: 1.5rem !important;
      }

      .pl-4,
      .px-4 {
        padding-left: 1.5rem !important;
      }

      .p-5 {
        padding: 3rem !important;
      }

      .pt-5,
      .py-5 {
        padding-top: 3rem !important;
      }

      .pr-5,
      .px-5 {
        padding-right: 3rem !important;
      }

      .pb-5,
      .py-5 {
        padding-bottom: 3rem !important;
      }

      .pl-5,
      .px-5 {
        padding-left: 3rem !important;
      }
      .mt-4,
      .my-4 {
        margin-top: 1.5rem !important;
      }

      .mr-4,
      .mx-4 {
        margin-right: 1.5rem !important;
      }

      .mb-4,
      .my-4 {
        margin-bottom: 1.5rem !important;
      }

      .ml-4,
      .mx-4 {
        margin-left: 1.5rem !important;
      }

      .m-5 {
        margin: 3rem !important;
      }

      .mt-5,
      .my-5 {
        margin-top: 3rem !important;
      }
      .bg-light {
        background-color: #f8f9fa !important;
      }
      .bg-white {
        background-color: #fff !important;
      }


    </style>
  </head>
  <body>
    <div class="fluid-container bg-light p-5">
      <div class="container">
        <h2> <b>EVOTING PORTAL</b> </h2>
        <div class="bg-white px-5 py-4 mt-4">

          <h3> {{$notification['content']}} </h3>
        </div>
      </div>
    </div>
  </body>
</html>
