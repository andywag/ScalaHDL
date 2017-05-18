package com.simplifide.generate.test2.blocktest

import com.simplifide.generate.blocks.basic.flop.ClockControl
import com.simplifide.generate.generator.SimpleSegment
import com.simplifide.generate.parser.EntityParser
import com.simplifide.generate.project.{NewEntity, Project}
import com.simplifide.generate.signal.SignalTrait
import com.simplifide.generate.test2.TestEntityParser

/**
  * Created by andy on 5/3/17.
  */
trait BlockTestParser extends TestEntityParser{
  /** Clock for the testbench */
  def blockName:String
  override val name = "test" + blockName.capitalize



  override implicit val clk: ClockControl = ClockControl("clk","reset")
  implicit val testLength = 1000

  val dutParser:EntityParser



  /- ("Stop the test when the data runs out")
  $always_clk(clk) (
    $iff (index == testLength) $then (
      $finish
      )
  )

  override def dataLocation:String = {
    val structure = BlockProject.getStructure(blockName)
    structure.create
    structure.dataDirectory.getAbsolutePath
  }

  def create = {
    val project = new BlockProject(this)
    project.createProject
    project
  }

  def postRun() = {}



}
