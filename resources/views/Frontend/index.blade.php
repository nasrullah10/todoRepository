@extends('Frontend.layouts.app')

@section('content')
<div class="row">
    <div class="col-md-12">
        
    </div>
</div>
<div class="row">
<div class="col-lg-3">
    <span style="padding-left:200px">My Task</span>
    
</div>
<div class="col-md-6 mb-4">
    
    <fieldset class="form-group">
        <select class="form-select" id="basicSelect">
            <option value="01">January</option>
            <option value="02">Febuary</option>
            <option value="03">March</option>
            <option value="04">April</option>
            <option value="05">May</option>
            <option value="06">June</option>
            <option value="07">July </option>
            <option value="08">August</option>
            <option value="09">September</option>
            <option value="10">October</option>
            <option value="11">November</option>
            <option value="12">December</option>
        </select>
    </fieldset>
</div>
<div class="col-lg-3">
<span>Filter</span>
<span class="icon dripicons-experiment"></span>
<ul class="list-unstyled mb-0">
<li class="d-inline-block me-2 mb-1">
    <div class="form-check">
        <div class="checkbox">
            <span class="icon dripicons-flag" style="color:red"></span>
            <input type="checkbox" class="form-check-input" id="checkbox2">
            <label for="checkbox2">High!</label>
        </div>
    </div>
</li>
<li class="d-inline-block me-2 mb-1">
    <div class="form-check">
        <div class="checkbox">
            <span class="icon dripicons-flag" style="color:green"></span>
            <input type="checkbox" class="form-check-input" id="checkbox2">
            <label for="checkbox2">Medium!</label>
        </div>
    </div>
</li>
<li class="d-inline-block me-2 mb-1">
    <div class="form-check">
        <div class="checkbox">
            <span class="icon dripicons-flag" style="color:yellow"></span>
            <input type="checkbox" class="form-check-input" id="checkbox2">
            <label for="checkbox2">Low!</label>
        </div>
    </div>
</li>
<li class="d-inline-block me-2 mb-1">
    <div class="form-check">
        <div class="checkbox">
            <span class="icon dripicons-flag" style="color:brown"></span>
            <input type="checkbox" class="form-check-input" id="checkbox2">
            <label for="checkbox2">None!</label>
        </div>
    </div>
</li>


</ul>
</div>
</div>
<div class="page-heading">
    <h3>View All Tasks</h3>
</div>
<div class="page-content">
    
    <section class="row">
        
        <div class="col-12 col-lg-12">
            <div class="row">
                <div class="col-12 col-lg-12 col-md-12">
                    @foreach($tasks as $task) 
                    <div class="card">
                        <h6 class="font-extrabold mb-0" style="padding-top:20px;padding-left:12px">{{$task->title}}</h6>
                        <div class="card-body px-3 py-4-5">
                            
                            <div class="row">
                                
                                <div class="col-md-12">
                                   <div class="row">
                                       <div class="col-md-11">
                                           <span class="text-muted font-semibold" style="margin-top:-20px">{{$task->description}}</span>
                                       </div>
                                       <div class="col-md-1">
                                           <?php
                                            if($task->priority == 4){
                                               ?>
                                               <span class="icon dripicons-flag" style="color:red"></span>
                                               <?php 
                                            }else if($task->priority == 3){
                                                ?>
                                               <span class="icon dripicons-flag" style="color:green"></span>
                                               <?php
                                            }else if($task->priority == 2){
                                                ?>
                                               <span class="icon dripicons-flag" style="color:yellow"></span>
                                               <?php
                                            }else{
                                                ?>
                                               <span class="icon dripicons-flag" style="color:brown"></span>
                                               <?php
                                            }
                                           ?>
                                       </div>
                                   </div>
                                    <br>
                                    <span class="icon dripicons-clock" style="padding-right:10px"></span><span class="font-extrabold mt-4 "><?php echo $newDateTime = date('h:i A', strtotime($task->time));?></span><span class="font-extrabold mt-4" style="margin-left:10px"><?php echo date('d M ,y', strtotime($task->date))?></span>
                                   
                                </div>
                                
                                
                                
                            </div>
                        </div>
                    </div>
                     @endforeach
                </div>
                
            </div>
            
        </div>
        
    </section>
</div>
@endsection
<script>
    $("#checkbox :checkbox").click(function() {
       
       $("#checkbox :checkbox:checked").each(function() {
           //$("." + $(this).val()).show();
           alert('test')
       });
    });
</script>
