#!/usr/bin/env ruby
#
# A simple "wrapper" script that is used to daemonize the rz_mk_control_server
# script (which represents the primary Microkernel Controller)
#
# @author Tom McSweeney

require 'rubygems'
require 'daemons'

options = {
  :ontop      => false,
  :multiple => false,
  :log_dir  => '/tmp',
  :backtrace  => true,
  :log_output => true
}

Daemons.run('rz_mk_control_server.rb', options)
