@extends('Frontend.layouts.app')

@section('content')
<section id="multiple-column-form">
        <div class="row match-height">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Add Task</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <form class="form">
                                <div class="row">
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <label for="first-name-column">Task Title</label>
                                            <input type="text" id="title" class="form-control"
                                                placeholder="Enter Task Name" name="fname-column">
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <label for="last-name-column">Title Description</label>
                                            <input type="text" id="description" class="form-control"
                                                placeholder="Enter Task Description Here" name="lname-column">
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <label for="city-column">Date</label>
                                            <input type="date" id="date" class="form-control" placeholder="City"
                                                name="city-column">
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <label for="country-floating">Time</label>
                                            <input type="time" id="time" class="form-control"
                                                name="country-floating" placeholder="Country">
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12"><br>
                                        <div class="form-group">
                                            <label for="company-column">Priority</label><br>
                                            <div class="form-check"><br>
                                                <span class="icon dripicons-flag" style="color:red"></span>
                                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                                <label class="form-check-label" for="flexRadioDefault1">
                                                    High
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <span class="icon dripicons-flag" style="color:green"></span>
                                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2"
                                                    checked>
                                                <label class="form-check-label" for="flexRadioDefault2">
                                                    Medium
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <span class="icon dripicons-flag" style="color:yellow"></span>
                                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                                <label class="form-check-label" for="flexRadioDefault1">
                                                    Low
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <span class="icon dripicons-flag" style="color:brown"></span>
                                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2"
                                                    checked>
                                                <label class="form-check-label" for="flexRadioDefault2">
                                                    None
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <br>
                                        <div class="form-group icon dripicons-stopwatch">
                                            <label for="email-id-column">Reminder</label>
                                            
                                                <input class="form-check-input" type="checkbox" name="reminder" id="reminder">
                                                
                                        </div>
                                        <div id="reminder_div">ddfd</div>
                                    </div>
                                    <div class="form-group col-12">
                                        <div class='form-check'>
                                            <div class="checkbox">
                                                <input type="checkbox" id="checkbox5" class='form-check-input' checked>
                                                <label for="checkbox5">Remember Me</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 d-flex justify-content-end">
                                        <button type="submit" class="btn btn-primary me-1 mb-1">Submit</button>
                                        <button type="reset" class="btn btn-light-secondary me-1 mb-1">Reset</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
@section('scripts')
<script>
       $("#reminder").change(function(){
           var checkbox = $(this);                 
            if( checkbox.is(':checked') ) {                       
                $("#reminder_div").html("<div class='col-md-6'><label for='time'>Time</label><input type='checkbox' name='time' id='time' class='form-check-input'></div>")
            } else {                      
                $("#reminder_div").html("")
            }
                
            
          
        });
        $(document).on('change', '#time', function() {
            var timecheckbox = $(this);                 
            if( timecheckbox.is(':checked') ) {                       
                $("#reminder_div").html("<div class='col-md-6'><label for='time'><label for='time'>Time</label><input type='checkbox' checked name='time' id='time' class='form-check-input'><br>Today Date And Time</label><input class='form-control' type='text' name='todaydatetime' id='todaydatetime' class='form-check-input'></div>")
            } else {                      
                $("#reminder_div").html("<div class='col-md-6'><label for='time'><label for='time'>Time</label><input type='checkbox' name='time' id='time' class='form-check-input'></div>")
            }
              
        });
</script>

@endsection
