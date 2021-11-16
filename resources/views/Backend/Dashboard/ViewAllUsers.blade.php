@extends('Backend.layouts.app')

@section('content')

            
<div class="page-heading">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>DataTable</h3>
                <p class="text-subtitle text-muted">For user to check they list</p>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="admin">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">DataTable</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <section class="section">
        <div class="card">
            <div class="card-header">
                View All User
            </div>
            <div class="card-body">
                <table class="table table-striped" id="table1">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Users Level</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            $counter = 1;
                        ?>
                       @foreach ($users as $user)
                       
                        <tr>
                            <td>{{$counter++}}</td>
                            <td>{{$user['name']}}</td>
                            <td>{{$user['email']}}</td>
                            <td>{{$user['phone_number']}}</td>
                            <td>
                            <?php 
                                
                                if($user['current_level'] == 1){
                                    ?>
                                <span class="badge bg-dark">Bigginer</span>    
                                    <?php 
                                }else if($user['current_level'] == 2){
                                    ?>
                                <span class="badge bg-primary">Intermidiate</span>  
                                    <?php
                                }else if($user['current_level'] == 3){
                                    ?>
                                <span class="badge bg-warning">Expert</span>    
                                    <?php
                                }
                            ?>
                            </td>
                                
                            <td>
                                <span class="badge bg-success">Active</span>
                            </td>
                            <td>
                                <div class="btn-group">
                                  <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Action
                                  </button>
                                  <div class="dropdown-menu">
                                    <a class="dropdown-item" href="#">Action</a>
                                    <a class="dropdown-item" href="#">Another action</a>
                                    <a class="dropdown-item" href="#">Something else here</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#">Separated link</a>
                                  </div>
                                </div>
                            </td>
                        </tr>
                        
                       @endforeach
                    </tbody>
                </table>
            </div>
        </div>

    </section>
</div>

            
@endsection
