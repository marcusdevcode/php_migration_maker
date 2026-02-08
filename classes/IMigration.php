<?php

namespace SampleNameSpace;

interface IMigration
{
    public function up();
    public function down();
}