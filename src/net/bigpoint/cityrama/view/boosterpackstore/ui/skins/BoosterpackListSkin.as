package net.bigpoint.cityrama.view.boosterpackstore.ui.skins
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.EffectEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.resources.ResourceManager;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import spark.components.DataGrid;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.core.NavigationUnit;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.effects.animation.SimpleMotionPath;
   import spark.layouts.HorizontalLayout;
   import spark.skins.SparkSkin;
   
   public class BoosterpackListSkin extends SparkSkin implements IStateClient2
   {
      
      private var _385593099dataGroup:DataGroup;
      
      private var _721040133motionPath:SimpleMotionPath;
      
      private var _599151817scrollAnimation:Animate;
      
      private var _75450170scrollLeftButton:DynamicImageButton;
      
      private var _1993162593scrollRightButton:DynamicImageButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _providerChanged:Boolean;
      
      private var _213507019hostComponent:DataGrid;
      
      public function BoosterpackListSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(!(_loc2_ && _loc1_))
               {
                  this.mxmlContent = [this._BoosterpackListSkin_HGroup1_c()];
                  if(!_loc2_)
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr006d);
               }
               addr0059:
               this.currentState = "normal";
               if(_loc1_ || _loc2_)
               {
                  addr006d:
                  this._BoosterpackListSkin_Animate1_i();
                  if(_loc1_ || _loc2_)
                  {
                     this.addEventListener("creationComplete",this.___BoosterpackListSkin_SparkSkin1_creationComplete);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        states = [new State({
                           "name":"normal",
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "overrides":[]
                        })];
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr006d);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && _loc2_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
         }
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      public function scrollToPosition(param1:uint) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Number = Number(this.dataGroup.layout.getHorizontalScrollPositionDelta(param1));
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            §§push(_loc2_ == 0);
            if(_loc3_)
            {
               §§push(!§§pop());
               if(!_loc4_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr005f:
                        §§pop();
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           §§goto(addr0083);
                        }
                        §§goto(addr00a2);
                     }
                  }
                  addr0083:
                  if(!this.scrollAnimation.isPlaying)
                  {
                     if(_loc3_)
                     {
                        this.motionPath.valueBy = _loc2_;
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr00a2:
                           this.scrollAnimation.play();
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr005f);
         }
         §§goto(addr00a2);
      }
      
      private function scrollAnimation_effectStart() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            this.dataGroup.mouseChildren = false;
         }
      }
      
      private function scrollAnimation_effectEnd() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            this.dataGroup.mouseChildren = true;
            if(!_loc2_)
            {
               addr002a:
               this.checkScroll();
            }
            return;
         }
         §§goto(addr002a);
      }
      
      private function creationComplete() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.scrollAnimation.target = this.dataGroup.layout;
            if(_loc3_)
            {
               this.scrollToPosition(NavigationUnit.HOME);
               if(_loc3_)
               {
                  this.checkScroll();
                  if(_loc3_)
                  {
                     addr0045:
                     §§push(this.scrollLeftButton);
                     if(!_loc2_)
                     {
                        var _loc1_:Boolean;
                        this.scrollLeftButton.enabled = _loc1_ = false;
                        §§pop().visible = _loc1_;
                        if(!(_loc2_ && _loc1_))
                        {
                           §§goto(addr0077);
                        }
                        §§goto(addr0094);
                     }
                     §§goto(addr0098);
                  }
               }
               addr0077:
               this.dataGroup.addEventListener("dataProviderChanged",this.onDataChanged);
               if(!(_loc2_ && Boolean(this)))
               {
                  this.scrollLeftButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.buffLayer"),String("rcl.tooltips.buffLayer.buff.previous"));
                  addr0094:
                  addr0098:
                  if(_loc3_ || _loc1_)
                  {
                     this.scrollRightButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.buffLayer"),String("rcl.tooltips.buffLayer.buff.next"));
                  }
               }
               return;
            }
         }
         §§goto(addr0045);
      }
      
      private function onDataChanged(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._providerChanged = true;
            if(!_loc2_)
            {
               this.checkScroll();
            }
         }
      }
      
      private function checkScroll(param1:FlexEvent = null) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(_loc7_)
         {
            this.dataGroup.validateNow();
         }
         var _loc2_:Vector.<int> = this.dataGroup.getItemIndicesInView();
         var _loc3_:Object = this.dataGroup.getElementAt(0);
         var _loc4_:Object = this.dataGroup.getElementAt(this.dataGroup.numElements - 1);
         if(_loc7_)
         {
            §§push(this.dataGroup.numElements > 4);
            if(!_loc6_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(_temp_2)
               {
                  if(_loc7_ || Boolean(_loc2_))
                  {
                     §§pop();
                     if(!(_loc6_ && Boolean(this)))
                     {
                        §§push(this._providerChanged);
                        if(!(_loc6_ && Boolean(_loc3_)))
                        {
                           addr009c:
                           §§push(!§§pop());
                           if(!(_loc6_ && Boolean(_loc3_)))
                           {
                              addr00ab:
                              if(§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    if(_loc3_)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(this.scrollLeftButton);
                                          if(!_loc6_)
                                          {
                                             §§push(this.scrollLeftButton);
                                             if(!(_loc6_ && Boolean(_loc2_)))
                                             {
                                                §§push(false);
                                                if(_loc7_ || Boolean(param1))
                                                {
                                                   var _temp_9:* = §§pop();
                                                   §§push(_temp_9);
                                                   §§push(_temp_9);
                                                   if(!_loc6_)
                                                   {
                                                      var _loc5_:* = §§pop();
                                                      if(!(_loc6_ && Boolean(_loc3_)))
                                                      {
                                                         §§pop().enabled = §§pop();
                                                         if(!_loc6_)
                                                         {
                                                            §§push(_loc5_);
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc7_ || Boolean(_loc3_))
                                                               {
                                                                  §§pop().visible = §§pop();
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr01a2:
                                                                     if(_loc4_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr01ae:
                                                                           §§push(this.scrollRightButton);
                                                                           if(_loc7_ || Boolean(this))
                                                                           {
                                                                              §§push(this.scrollRightButton);
                                                                              if(_loc7_ || Boolean(this))
                                                                              {
                                                                                 §§push(false);
                                                                                 if(!(_loc6_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    var _temp_15:* = §§pop();
                                                                                    §§push(_temp_15);
                                                                                    §§push(_temp_15);
                                                                                    if(!(_loc6_ && Boolean(param1)))
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       if(!(_loc6_ && Boolean(_loc3_)))
                                                                                       {
                                                                                          §§pop().enabled = §§pop();
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§push(_loc5_);
                                                                                             if(_loc7_ || Boolean(param1))
                                                                                             {
                                                                                                if(!(_loc6_ && Boolean(param1)))
                                                                                                {
                                                                                                   §§pop().visible = §§pop();
                                                                                                   if(_loc6_ && Boolean(_loc2_))
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr02b5:
                                                                                                   §§pop().visible = §§pop();
                                                                                                   if(_loc6_ && Boolean(this))
                                                                                                   {
                                                                                                      addr02fd:
                                                                                                      §§push(this.scrollLeftButton);
                                                                                                      if(!(_loc6_ && Boolean(_loc2_)))
                                                                                                      {
                                                                                                         §§push(this.scrollLeftButton);
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            addr0319:
                                                                                                            §§push(false);
                                                                                                            if(!(_loc6_ && Boolean(_loc2_)))
                                                                                                            {
                                                                                                               var _temp_24:* = §§pop();
                                                                                                               §§push(_temp_24);
                                                                                                               §§push(_temp_24);
                                                                                                               if(_loc7_ || Boolean(_loc3_))
                                                                                                               {
                                                                                                                  _loc5_ = §§pop();
                                                                                                                  if(!(_loc6_ && Boolean(_loc3_)))
                                                                                                                  {
                                                                                                                     §§pop().enabled = §§pop();
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        addr0350:
                                                                                                                        §§push(_loc5_);
                                                                                                                        if(_loc7_ || Boolean(this))
                                                                                                                        {
                                                                                                                           if(!(_loc6_ && Boolean(this)))
                                                                                                                           {
                                                                                                                              addr0370:
                                                                                                                              §§pop().visible = §§pop();
                                                                                                                              if(!(_loc6_ && Boolean(_loc2_)))
                                                                                                                              {
                                                                                                                                 addr038c:
                                                                                                                                 §§push(this.scrollRightButton);
                                                                                                                                 this.scrollRightButton.enabled = _loc5_ = true;
                                                                                                                                 addr0393:
                                                                                                                                 §§pop().visible = _loc5_;
                                                                                                                                 addr038f:
                                                                                                                                 addr0391:
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 addr038a:
                                                                                                                                 addr0389:
                                                                                                                                 addr0388:
                                                                                                                                 addr0384:
                                                                                                                                 addr0380:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr04f2:
                                                                                                                              §§pop().visible = §§pop();
                                                                                                                           }
                                                                                                                           §§goto(addr04f4);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr04f0:
                                                                                                                        }
                                                                                                                        §§goto(addr04f2);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr04ee:
                                                                                                                        §§push(_loc5_);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr046c:
                                                                                                                     §§pop().enabled = §§pop();
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        §§push(_loc5_);
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           if(!(_loc6_ && Boolean(_loc3_)))
                                                                                                                           {
                                                                                                                              addr048d:
                                                                                                                              §§pop().visible = §§pop();
                                                                                                                              if(_loc7_ || Boolean(_loc2_))
                                                                                                                              {
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr04f2);
                                                                                                                           }
                                                                                                                           §§goto(addr04f4);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr04f0);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr04ee);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr04f0);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr04e9:
                                                                                                                  _loc5_ = §§pop();
                                                                                                                  addr04eb:
                                                                                                                  §§pop().enabled = §§pop();
                                                                                                               }
                                                                                                               §§goto(addr04ee);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr0455:
                                                                                                               var _temp_32:* = §§pop();
                                                                                                               §§push(_temp_32);
                                                                                                               §§push(_temp_32);
                                                                                                               if(_loc7_ || Boolean(this))
                                                                                                               {
                                                                                                                  addr0464:
                                                                                                                  _loc5_ = §§pop();
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     §§goto(addr046c);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr04e8:
                                                                                                                     var _temp_34:* = §§pop();
                                                                                                                     §§goto(addr04e9);
                                                                                                                     §§push(_temp_34);
                                                                                                                     §§push(_temp_34);
                                                                                                                     addr04e6:
                                                                                                                  }
                                                                                                                  §§goto(addr04ee);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr04e9);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr03b3:
                                                                                                            §§push(this.scrollRightButton);
                                                                                                            if(_loc7_ || Boolean(this))
                                                                                                            {
                                                                                                               §§push(this.scrollRightButton);
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  §§push(false);
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     var _temp_36:* = §§pop();
                                                                                                                     §§push(_temp_36);
                                                                                                                     §§push(_temp_36);
                                                                                                                     if(_loc7_ || Boolean(param1))
                                                                                                                     {
                                                                                                                        _loc5_ = §§pop();
                                                                                                                        if(_loc7_ || Boolean(this))
                                                                                                                        {
                                                                                                                           §§pop().visible = §§pop();
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              §§push(_loc5_);
                                                                                                                              if(!(_loc6_ && Boolean(_loc3_)))
                                                                                                                              {
                                                                                                                                 if(!(_loc6_ && Boolean(_loc3_)))
                                                                                                                                 {
                                                                                                                                    var _temp_41:* = §§pop();
                                                                                                                                    §§push(_temp_41);
                                                                                                                                    §§push(_temp_41);
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       _loc5_ = §§pop();
                                                                                                                                       if(!(_loc6_ && Boolean(_loc3_)))
                                                                                                                                       {
                                                                                                                                          §§pop().enabled = §§pop();
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc5_);
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                addr0445:
                                                                                                                                                if(_loc7_ || Boolean(_loc2_))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr0455);
                                                                                                                                                }
                                                                                                                                                §§goto(addr04e8);
                                                                                                                                             }
                                                                                                                                             §§goto(addr04e6);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr04d6:
                                                                                                                                             §§push(_loc5_);
                                                                                                                                             if(_loc7_ || Boolean(_loc2_))
                                                                                                                                             {
                                                                                                                                                §§goto(addr04e6);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr04eb);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr04d0:
                                                                                                                                          var _temp_45:* = §§pop();
                                                                                                                                          addr04d3:
                                                                                                                                          §§pop().enabled = _loc5_ = §§pop();
                                                                                                                                          addr04d1:
                                                                                                                                          addr04ce:
                                                                                                                                       }
                                                                                                                                       §§goto(addr04d6);
                                                                                                                                    }
                                                                                                                                    §§goto(addr04d1);
                                                                                                                                 }
                                                                                                                                 §§goto(addr04d0);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr04c6:
                                                                                                                              §§push(_loc5_);
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 §§goto(addr04ce);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr04d3);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr04c4:
                                                                                                                           §§pop().visible = §§pop();
                                                                                                                        }
                                                                                                                        §§goto(addr04c6);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr04b3:
                                                                                                                        _loc5_ = §§pop();
                                                                                                                     }
                                                                                                                     §§goto(addr04c4);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr04b2:
                                                                                                                     var _temp_46:* = §§pop();
                                                                                                                     §§push(_temp_46);
                                                                                                                     §§push(_temp_46);
                                                                                                                  }
                                                                                                                  §§goto(addr04b3);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr04b1:
                                                                                                                  §§push(false);
                                                                                                               }
                                                                                                               §§goto(addr04b2);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr04ad:
                                                                                                               §§push(this.scrollRightButton);
                                                                                                            }
                                                                                                            §§goto(addr04b1);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr03a9:
                                                                                                         §§push(this.scrollLeftButton);
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§goto(addr03b3);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr04a9:
                                                                                                            §§push(this.scrollRightButton);
                                                                                                         }
                                                                                                         §§goto(addr04ad);
                                                                                                      }
                                                                                                      §§goto(addr03b3);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr04f4);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr02a5:
                                                                                                if(_loc7_ || Boolean(param1))
                                                                                                {
                                                                                                   §§goto(addr02b5);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0393);
                                                                                          }
                                                                                          §§goto(addr038f);
                                                                                       }
                                                                                       §§goto(addr038c);
                                                                                    }
                                                                                    §§goto(addr038a);
                                                                                 }
                                                                                 §§goto(addr0389);
                                                                              }
                                                                              §§goto(addr0388);
                                                                           }
                                                                           §§goto(addr0384);
                                                                        }
                                                                        §§goto(addr02fd);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this.scrollRightButton);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(this.scrollRightButton);
                                                                           if(!(_loc6_ && Boolean(this)))
                                                                           {
                                                                              §§push(true);
                                                                              if(_loc7_ || Boolean(_loc3_))
                                                                              {
                                                                                 var _temp_50:* = §§pop();
                                                                                 §§push(_temp_50);
                                                                                 §§push(_temp_50);
                                                                                 if(_loc7_ || Boolean(this))
                                                                                 {
                                                                                    _loc5_ = §§pop();
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§pop().enabled = §§pop();
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          if(!(_loc6_ && Boolean(_loc2_)))
                                                                                          {
                                                                                             §§goto(addr02a5);
                                                                                          }
                                                                                          §§goto(addr0391);
                                                                                       }
                                                                                       §§goto(addr038f);
                                                                                    }
                                                                                    §§goto(addr038c);
                                                                                 }
                                                                                 §§goto(addr038a);
                                                                              }
                                                                              §§goto(addr0389);
                                                                           }
                                                                           §§goto(addr0388);
                                                                        }
                                                                     }
                                                                     §§goto(addr0384);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr02df:
                                                                     this._providerChanged = false;
                                                                     if(_loc7_)
                                                                     {
                                                                        if(this.dataGroup.numElements > 4)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              §§goto(addr02fd);
                                                                           }
                                                                           §§goto(addr04f4);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(this.scrollLeftButton);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§goto(addr03a9);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr04a5:
                                                                              §§push(this.scrollLeftButton);
                                                                           }
                                                                           §§goto(addr04a9);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr0380);
                                                               }
                                                               §§goto(addr0370);
                                                            }
                                                            else
                                                            {
                                                               addr018a:
                                                               if(_loc7_)
                                                               {
                                                                  §§pop().visible = §§pop();
                                                                  if(!(_loc6_ && Boolean(param1)))
                                                                  {
                                                                     §§goto(addr01a2);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr02df);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr048d);
                                                         }
                                                         else
                                                         {
                                                            addr0182:
                                                            §§push(_loc5_);
                                                            if(_loc7_)
                                                            {
                                                               §§goto(addr018a);
                                                            }
                                                         }
                                                         §§goto(addr04f0);
                                                      }
                                                      §§goto(addr0445);
                                                   }
                                                   §§goto(addr0464);
                                                }
                                                else
                                                {
                                                   addr015a:
                                                   var _temp_54:* = §§pop();
                                                   §§push(_temp_54);
                                                   §§push(_temp_54);
                                                   if(!_loc6_)
                                                   {
                                                      _loc5_ = §§pop();
                                                      if(!(_loc6_ && Boolean(this)))
                                                      {
                                                         §§pop().enabled = §§pop();
                                                         if(_loc7_ || Boolean(_loc2_))
                                                         {
                                                            §§goto(addr0182);
                                                         }
                                                         §§goto(addr0350);
                                                      }
                                                      §§goto(addr04eb);
                                                   }
                                                }
                                                §§goto(addr04e9);
                                             }
                                             §§goto(addr04a9);
                                          }
                                          §§goto(addr04a5);
                                       }
                                       addr04f4:
                                       return;
                                    }
                                    §§push(this.scrollLeftButton);
                                    if(_loc7_ || Boolean(param1))
                                    {
                                       §§push(this.scrollLeftButton);
                                       if(_loc7_)
                                       {
                                          §§push(true);
                                          if(_loc7_ || Boolean(this))
                                          {
                                             §§goto(addr015a);
                                          }
                                          §§goto(addr04e8);
                                       }
                                       §§goto(addr0319);
                                    }
                                    §§goto(addr04a5);
                                 }
                                 §§goto(addr01ae);
                              }
                              else
                              {
                                 addr02cd:
                                 if(this._providerChanged)
                                 {
                                    if(_loc7_ || Boolean(this))
                                    {
                                       §§goto(addr02df);
                                    }
                                    §§goto(addr0380);
                                 }
                                 else
                                 {
                                    §§push(this.scrollLeftButton);
                                 }
                              }
                              §§goto(addr04a5);
                           }
                           §§goto(addr02cd);
                        }
                        §§goto(addr00ab);
                     }
                     §§goto(addr02df);
                  }
                  §§goto(addr009c);
               }
               §§goto(addr00ab);
            }
            §§goto(addr02cd);
         }
         §§goto(addr02df);
      }
      
      private function _BoosterpackListSkin_Animate1_i() : Animate
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Animate = new Animate();
         if(_loc3_)
         {
            _loc1_.duration = 500;
            if(_loc3_ || _loc3_)
            {
               _loc1_.motionPaths = new <MotionPath>[this._BoosterpackListSkin_SimpleMotionPath1_i()];
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.addEventListener("effectStart",this.__scrollAnimation_effectStart);
                  addr006e:
                  if(!_loc2_)
                  {
                     _loc1_.addEventListener("effectEnd",this.__scrollAnimation_effectEnd);
                     if(_loc3_)
                     {
                        addr009b:
                        this.scrollAnimation = _loc1_;
                        if(_loc3_)
                        {
                           addr00a5:
                           BindingManager.executeBindings(this,"scrollAnimation",this.scrollAnimation);
                        }
                     }
                     §§goto(addr00b2);
                  }
                  §§goto(addr009b);
               }
               §§goto(addr00a5);
            }
            §§goto(addr006e);
         }
         addr00b2:
         return _loc1_;
      }
      
      private function _BoosterpackListSkin_SimpleMotionPath1_i() : SimpleMotionPath
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SimpleMotionPath = new SimpleMotionPath();
         if(_loc2_ || _loc2_)
         {
            _loc1_.property = "horizontalScrollPosition";
            if(_loc2_ || _loc3_)
            {
               this.motionPath = _loc1_;
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr006a:
                  BindingManager.executeBindings(this,"motionPath",this.motionPath);
               }
               return _loc1_;
            }
         }
         §§goto(addr006a);
      }
      
      public function __scrollAnimation_effectStart(param1:EffectEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this.scrollAnimation_effectStart();
         }
      }
      
      public function __scrollAnimation_effectEnd(param1:EffectEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this.scrollAnimation_effectEnd();
         }
      }
      
      private function _BoosterpackListSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.percentWidth = 100;
                  if(_loc2_)
                  {
                     addr0059:
                     _loc1_.percentHeight = 100;
                     if(_loc2_)
                     {
                        _loc1_.mxmlContent = [this._BoosterpackListSkin_Group1_c(),this._BoosterpackListSkin_DataGroup1_i(),this._BoosterpackListSkin_Group2_c()];
                        addr0063:
                        if(_loc2_ || _loc3_)
                        {
                           §§goto(addr0093);
                        }
                        §§goto(addr009f);
                     }
                  }
                  addr0093:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr009f:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0063);
            }
            §§goto(addr009f);
         }
         §§goto(addr0059);
      }
      
      private function _BoosterpackListSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentHeight = 100;
            if(!_loc3_)
            {
               _loc1_.width = 40;
               if(!_loc3_)
               {
                  _loc1_.left = 0;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.mxmlContent = [this._BoosterpackListSkin_DynamicImageButton1_i()];
                     if(!_loc3_)
                     {
                        addr0076:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr0076);
               }
               §§goto(addr008e);
            }
            §§goto(addr0076);
         }
         addr008e:
         return _loc1_;
      }
      
      private function _BoosterpackListSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.styleName = "listLeft";
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.addEventListener("click",this.__scrollLeftButton_click);
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0077:
                        _loc1_.id = "scrollLeftButton";
                        if(!_loc2_)
                        {
                           addr0082:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr008e:
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr00ab:
                                    this.scrollLeftButton = _loc1_;
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       addr00bd:
                                       BindingManager.executeBindings(this,"scrollLeftButton",this.scrollLeftButton);
                                    }
                                    §§goto(addr00ca);
                                 }
                                 §§goto(addr00bd);
                              }
                              addr00ca:
                              return _loc1_;
                           }
                        }
                        §§goto(addr00ab);
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr00bd);
               }
               §§goto(addr0077);
            }
         }
         §§goto(addr008e);
      }
      
      public function __scrollLeftButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.scrollToPosition(NavigationUnit.PAGE_LEFT);
         }
      }
      
      private function _BoosterpackListSkin_DataGroup1_i() : DataGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DataGroup = new DataGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.focusEnabled = false;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0064:
                     _loc1_.layout = this._BoosterpackListSkin_HorizontalLayout1_c();
                     if(_loc3_)
                     {
                        _loc1_.id = "dataGroup";
                        if(_loc3_ || _loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§goto(addr00a6);
                              }
                           }
                           §§goto(addr00af);
                        }
                     }
                     addr00a6:
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        addr00af:
                        this.dataGroup = _loc1_;
                        if(_loc3_)
                        {
                           addr00b9:
                           BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                        }
                     }
                     §§goto(addr00c6);
                  }
                  addr00c6:
                  return _loc1_;
               }
               §§goto(addr00b9);
            }
            §§goto(addr0064);
         }
         §§goto(addr00b9);
      }
      
      private function _BoosterpackListSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(_loc3_)
         {
            _loc1_.clipAndEnableScrolling = true;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.useVirtualLayout = true;
               if(_loc3_)
               {
                  _loc1_.gap = 8;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.requestedMaxColumnCount = 4;
                     if(_loc3_ || _loc3_)
                     {
                        addr0082:
                        _loc1_.requestedColumnCount = 4;
                        if(_loc3_)
                        {
                           addr008d:
                           _loc1_.columnWidth = 120;
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr008d);
               }
            }
         }
         §§goto(addr0082);
      }
      
      private function _BoosterpackListSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.width = 40;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._BoosterpackListSkin_DynamicImageButton2_i()];
                  §§goto(addr003f);
               }
               §§goto(addr0062);
            }
         }
         addr003f:
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            addr0062:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _BoosterpackListSkin_DynamicImageButton2_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr005a);
               }
               §§goto(addr00b0);
            }
            §§goto(addr009b);
         }
         addr005a:
         _loc1_.styleName = "listRight";
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.addEventListener("click",this.__scrollRightButton_click);
            if(!_loc2_)
            {
               _loc1_.id = "scrollRightButton";
               if(!(_loc2_ && _loc2_))
               {
                  addr009b:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr00a7);
                     }
                     §§goto(addr00ba);
                  }
                  §§goto(addr00b0);
               }
               §§goto(addr00a7);
            }
            §§goto(addr00b0);
         }
         addr00a7:
         _loc1_.document = this;
         if(_loc3_)
         {
            addr00b0:
            this.scrollRightButton = _loc1_;
            if(!_loc2_)
            {
               addr00ba:
               BindingManager.executeBindings(this,"scrollRightButton",this.scrollRightButton);
            }
         }
         return _loc1_;
      }
      
      public function __scrollRightButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.scrollToPosition(NavigationUnit.PAGE_RIGHT);
         }
      }
      
      public function ___BoosterpackListSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.creationComplete();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dataGroup() : DataGroup
      {
         return this._385593099dataGroup;
      }
      
      public function set dataGroup(param1:DataGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._385593099dataGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0043:
                  this._385593099dataGroup = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr007a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr007a);
            }
            addr0089:
            return;
         }
         §§goto(addr0043);
      }
      
      [Bindable(event="propertyChange")]
      public function get motionPath() : SimpleMotionPath
      {
         return this._721040133motionPath;
      }
      
      public function set motionPath(param1:SimpleMotionPath) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._721040133motionPath;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._721040133motionPath = param1;
                  if(!_loc3_)
                  {
                     addr0052:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"motionPath",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0069);
            }
            addr0078:
            return;
         }
         §§goto(addr0052);
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollAnimation() : Animate
      {
         return this._599151817scrollAnimation;
      }
      
      public function set scrollAnimation(param1:Animate) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._599151817scrollAnimation;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._599151817scrollAnimation = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollAnimation",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0067);
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollLeftButton() : DynamicImageButton
      {
         return this._75450170scrollLeftButton;
      }
      
      public function set scrollLeftButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._75450170scrollLeftButton;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr0050:
                  this._75450170scrollLeftButton = param1;
                  if(_loc3_)
                  {
                     addr005a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollLeftButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr005a);
            }
            addr0079:
            return;
         }
         §§goto(addr0050);
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollRightButton() : DynamicImageButton
      {
         return this._1993162593scrollRightButton;
      }
      
      public function set scrollRightButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1993162593scrollRightButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1993162593scrollRightButton = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0041);
                  }
                  §§goto(addr0050);
               }
               addr0041:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0050:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollRightButton",_loc2_,param1));
                  }
               }
               §§goto(addr005f);
            }
         }
         addr005f:
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : DataGrid
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:DataGrid) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0074);
            }
            addr0083:
            return;
         }
         §§goto(addr0074);
      }
   }
}

