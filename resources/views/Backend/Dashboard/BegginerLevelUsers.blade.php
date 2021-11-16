@extends('Backend.layouts.app')

@section('content')

            
<div class="page-heading">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>Begginer Level</h3>
                <p class="text-subtitle text-muted">View All Begginer Level Users</p>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="admin">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Begginer Level</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <section class="section">
        <div class="card">
            <div class="card-header">
                View All Begginer Level Users
            </div>
            <div class="card-body">
                <table class="table table-striped" id="table1">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Status</th>
                            <th>Current Level</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $counter = 1;?>
                       @foreach ($BegginerLevelUsers as $user)
                       
                        <tr>
                            <td>{{$counter++}}</td>
                            <td>{{$user['name']}}</td>
                            <td>{{$user['email']}}</td>
                            <td>{{$user['phone_number']}}</td>
                            
                            <td>
                                <span class="badge bg-success">Active</span>
                            </td>
                            <?php 
                                if($user['current_level'] == 1){
                                    $currentLevel = "Begginner";
                                }
                            ?>
                            <td>{{ $currentLevel}}</td>
                        </tr>
                        
                       @endforeach
                    </tbody>
                </table>
            </div>
        </div>

    </section>
</div>

            
@endsection
