package net.bigpoint.cityrama.view.citysquare.ui.components
{
   import com.greensock.TweenMax;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.events.BriskImageDynaLibEvent;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class SlimProgressBarComponent extends Group
   {
      
      private var _97299bar:HGroup;
      
      private var _1396262968barEnd:BriskImageDynaLib;
      
      private var _334036562barTint:HGroup;
      
      private var _1058183138movingTrophy:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var revertProgress:Boolean;
      
      public var showTrophy:Boolean = false;
      
      private var _progress:Number;
      
      private var _progressDirty:Boolean;
      
      private var _tint:uint = 0;
      
      public function SlimProgressBarComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.percentWidth = 100;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr005d:
                     this.percentHeight = 100;
                     if(_loc1_)
                     {
                        this.mxmlContent = [this._SlimProgressBarComponent_HGroup1_c(),this._SlimProgressBarComponent_HGroup2_i(),this._SlimProgressBarComponent_HGroup3_i(),this._SlimProgressBarComponent_BriskImageDynaLib10_i()];
                        if(_loc1_)
                        {
                           addr0089:
                           this.addEventListener("creationComplete",this.___SlimProgressBarComponent_Group1_creationComplete);
                        }
                     }
                  }
                  §§goto(addr0095);
               }
               §§goto(addr0089);
            }
            addr0095:
            return;
         }
         §§goto(addr005d);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && _loc2_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     §§goto(addr004a);
                  }
               }
               §§goto(addr0050);
            }
            addr004a:
            return;
         }
         addr0050:
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            if(this._tint == 0)
            {
               if(_loc3_)
               {
                  addr002d:
                  if(getStyle("tint") == null)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        this._tint = 53236;
                        if(_loc3_ || Boolean(this))
                        {
                        }
                     }
                     addr0097:
                     TweenMax.to(this.barTint,0,{"tint":this._tint});
                  }
                  else
                  {
                     this._tint = getStyle("tint") as uint;
                     if(_loc3_ || Boolean(param1))
                     {
                        §§goto(addr0097);
                     }
                  }
               }
               return;
            }
            §§goto(addr0097);
         }
         §§goto(addr002d);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.commitProperties();
            if(_loc2_ || _loc3_)
            {
               this.movingTrophy.includeInLayout = this.movingTrophy.visible = this.showTrophy;
               if(_loc2_ || Boolean(this))
               {
                  §§goto(addr0049);
               }
               §§goto(addr0056);
            }
            §§goto(addr006d);
         }
         addr0049:
         if(this._progressDirty)
         {
            if(_loc2_)
            {
               addr0056:
               this._progressDirty = false;
               if(!_loc3_)
               {
                  addr006d:
                  this.bar.percentWidth = 100 * this._progress;
                  if(!_loc3_)
                  {
                     this.barTint.percentWidth = 100 * this._progress;
                     if(_loc2_)
                     {
                        addr0091:
                        if(this.progress == 0)
                        {
                           if(_loc2_)
                           {
                              this.bar.visible = false;
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr00c0:
                                 this.barTint.visible = false;
                                 if(!_loc2_)
                                 {
                                    addr00e4:
                                    this.barTint.visible = true;
                                 }
                              }
                           }
                        }
                        else
                        {
                           this.bar.visible = true;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§goto(addr00e4);
                           }
                        }
                     }
                     §§goto(addr00eb);
                  }
                  §§goto(addr0091);
               }
               §§goto(addr00c0);
            }
            §§goto(addr006d);
         }
         addr00eb:
      }
      
      public function get progress() : Number
      {
         return this._progress;
      }
      
      public function set progress(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(param1);
            if(!_loc2_)
            {
               if(§§pop() != this.progress)
               {
                  if(!_loc2_)
                  {
                     this._progress = param1;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        this._progressDirty = true;
                        if(_loc3_)
                        {
                           addr004a:
                           §§push(this._progress == 0);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(!§§pop());
                              if(!_loc2_)
                              {
                                 var _temp_4:* = §§pop();
                                 §§push(_temp_4);
                                 if(_temp_4)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§pop();
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          addr00a4:
                                          addr0084:
                                          §§push(this.revertProgress);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             addr00a3:
                                             §§push(§§pop());
                                          }
                                          if(§§pop())
                                          {
                                             if(!_loc2_)
                                             {
                                                addr00ad:
                                                this._progress = 1 - this._progress;
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   addr00c5:
                                                   invalidateProperties();
                                                }
                                             }
                                             §§goto(addr00ca);
                                          }
                                       }
                                       §§goto(addr00c5);
                                    }
                                    §§goto(addr00a3);
                                 }
                              }
                           }
                           §§goto(addr00a4);
                        }
                        §§goto(addr00ad);
                     }
                     §§goto(addr0084);
                  }
               }
               addr00ca:
               return;
            }
            §§goto(addr004a);
         }
         §§goto(addr00c5);
      }
      
      public function set tint(param1:uint) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._tint = param1;
            if(_loc3_)
            {
               TweenMax.to(this.barTint,0,{"tint":this._tint});
            }
         }
      }
      
      private function setNewTrophyPadding() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(this.showTrophy)
            {
               if(_loc1_ || _loc2_)
               {
                  this.movingTrophy.left = this.getNewTrophyPadding();
               }
            }
         }
      }
      
      private function getNewTrophyPadding() : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = NaN;
         if(_loc2_ || _loc2_)
         {
            §§push(this.barEnd);
            if(_loc2_ || Boolean(this))
            {
               §§push(§§pop().width == 0);
               if(!_loc3_)
               {
                  §§push(!§§pop());
                  if(_loc2_ || Boolean(this))
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     if(_temp_4)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           §§pop();
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr008d:
                              §§push(this.movingTrophy.width == 0);
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr008c:
                                 §§push(!§§pop());
                              }
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    §§goto(addr009a);
                                 }
                              }
                           }
                           §§goto(addr00ce);
                        }
                        §§goto(addr008c);
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr008d);
            }
            addr009a:
            §§push(this.barEnd.x + (this.barEnd.width - this.movingTrophy.width / 2));
            if(_loc2_)
            {
               _loc1_ = §§pop();
               if(!(_loc2_ || Boolean(this)))
               {
                  addr00ce:
                  return 0;
               }
               addr00cc:
               return _loc1_;
            }
         }
         §§goto(addr00cc);
      }
      
      private function _SlimProgressBarComponent_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.gap = 0;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.verticalCenter = 0;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContent = [this._SlimProgressBarComponent_BriskImageDynaLib1_c(),this._SlimProgressBarComponent_BriskImageDynaLib2_c(),this._SlimProgressBarComponent_BriskImageDynaLib3_c()];
                     if(_loc2_)
                     {
                        addr008d:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  §§goto(addr009d);
               }
            }
            §§goto(addr008d);
         }
         addr009d:
         return _loc1_;
      }
      
      private function _SlimProgressBarComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "ui_assistent_barbase_left";
               if(_loc3_)
               {
                  §§goto(addr004b);
               }
               §§goto(addr0057);
            }
         }
         addr004b:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               addr0057:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _SlimProgressBarComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "ui_assistent_barbase_middle";
               if(_loc2_ || _loc2_)
               {
                  addr0055:
                  _loc1_.percentWidth = 100;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0084:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              addr0098:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0098);
            }
            §§goto(addr0055);
         }
         §§goto(addr0098);
      }
      
      private function _SlimProgressBarComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!(_loc3_ && _loc2_))
            {
               addr0040:
               _loc1_.dynaBmpSourceName = "ui_assistent_barbase_right";
               if(!_loc3_)
               {
                  §§goto(addr004c);
               }
               §§goto(addr0058);
            }
            addr004c:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr0058:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0040);
      }
      
      private function _SlimProgressBarComponent_HGroup2_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.gap = 0;
            if(_loc2_ || _loc3_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.paddingLeft = 2;
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr00de);
               }
               addr0055:
               _loc1_.paddingRight = 2;
               §§goto(addr00c3);
            }
            else if(!_loc1_.document)
            {
               if(_loc2_ || _loc3_)
               {
                  addr00c3:
                  §§push(_loc2_);
                  _loc1_.document = this;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr00d4:
                     this.bar = _loc1_;
                     if(_loc2_)
                     {
                        addr00de:
                        BindingManager.executeBindings(this,"bar",this.bar);
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr00d4);
         }
         §§goto(addr00de);
      }
      
      private function _SlimProgressBarComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "ui_assistent_bar_left";
               if(_loc3_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0070:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0070);
            }
            addr0074:
            return _loc1_;
         }
         §§goto(addr0070);
      }
      
      private function _SlimProgressBarComponent_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(_loc2_ || _loc2_)
            {
               addr0043:
               _loc1_.dynaBmpSourceName = "ui_assistent_bar_middle";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc2_)
                     {
                        addr0076:
                        _loc1_.addEventListener("sizeChanged",this.___SlimProgressBarComponent_BriskImageDynaLib5_sizeChanged);
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr009b:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr009f);
                        }
                     }
                     §§goto(addr009b);
                  }
                  addr009f:
                  return _loc1_;
               }
               §§goto(addr0076);
            }
            §§goto(addr009b);
         }
         §§goto(addr0043);
      }
      
      public function ___SlimProgressBarComponent_BriskImageDynaLib5_sizeChanged(param1:BriskImageDynaLibEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.setNewTrophyPadding();
         }
      }
      
      private function _SlimProgressBarComponent_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "ui_assistent_bar_right";
               if(!_loc3_)
               {
                  addr0056:
                  _loc1_.id = "barEnd";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr0082:
                              this.barEnd = _loc1_;
                              if(!_loc3_)
                              {
                                 addr008c:
                                 BindingManager.executeBindings(this,"barEnd",this.barEnd);
                              }
                           }
                           §§goto(addr0099);
                        }
                        §§goto(addr008c);
                     }
                     §§goto(addr0082);
                  }
               }
               addr0099:
               return _loc1_;
            }
            §§goto(addr0082);
         }
         §§goto(addr0056);
      }
      
      private function _SlimProgressBarComponent_HGroup3_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.gap = 0;
            if(_loc2_ || _loc2_)
            {
               addr0031:
               _loc1_.verticalCenter = 0;
               if(_loc2_)
               {
                  _loc1_.paddingLeft = 2;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     §§goto(addr004e);
                  }
                  §§goto(addr00dc);
               }
               §§goto(addr0082);
            }
            addr004e:
            _loc1_.paddingRight = 2;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.blendMode = "overlay";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr0082:
                  _loc1_.mxmlContent = [this._SlimProgressBarComponent_BriskImageDynaLib7_c(),this._SlimProgressBarComponent_BriskImageDynaLib8_c(),this._SlimProgressBarComponent_BriskImageDynaLib9_c()];
                  if(!_loc3_)
                  {
                     _loc1_.id = "barTint";
                     if(_loc2_)
                     {
                        addr00a9:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              §§goto(addr00c9);
                           }
                        }
                        §§goto(addr00d2);
                     }
                     addr00c9:
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        addr00d2:
                        this.barTint = _loc1_;
                        if(_loc2_)
                        {
                           addr00dc:
                           BindingManager.executeBindings(this,"barTint",this.barTint);
                        }
                     }
                     §§goto(addr00e9);
                  }
                  §§goto(addr00a9);
               }
            }
            addr00e9:
            return _loc1_;
         }
         §§goto(addr0031);
      }
      
      private function _SlimProgressBarComponent_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "ui_assistent_bar_left";
               if(!(_loc2_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        addr0072:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0072);
            }
         }
         addr0076:
         return _loc1_;
      }
      
      private function _SlimProgressBarComponent_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "ui_assistent_bar_middle";
               if(!(_loc3_ && Boolean(this)))
               {
                  §§goto(addr004c);
               }
               §§goto(addr0086);
            }
            addr004c:
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               addr0056:
               if(!(_loc3_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0086:
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0056);
      }
      
      private function _SlimProgressBarComponent_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "ui_assistent_bar_right";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0074:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0078);
            }
            §§goto(addr0074);
         }
         addr0078:
         return _loc1_;
      }
      
      private function _SlimProgressBarComponent_BriskImageDynaLib10_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "icon_trophy_mini";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.visible = false;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.includeInLayout = false;
                     if(!_loc3_)
                     {
                        §§goto(addr0065);
                     }
                  }
                  §§goto(addr00bc);
               }
               addr0065:
               _loc1_.addEventListener("updateComplete",this.__movingTrophy_updateComplete);
               if(!(_loc3_ && _loc3_))
               {
                  addr007e:
                  _loc1_.id = "movingTrophy";
                  if(_loc2_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr00a9:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              §§goto(addr00b2);
                           }
                           §§goto(addr00bc);
                        }
                     }
                  }
                  addr00b2:
                  this.movingTrophy = _loc1_;
                  if(!_loc3_)
                  {
                     addr00bc:
                     BindingManager.executeBindings(this,"movingTrophy",this.movingTrophy);
                  }
                  §§goto(addr00c9);
               }
               addr00c9:
               return _loc1_;
            }
            §§goto(addr007e);
         }
         §§goto(addr00a9);
      }
      
      public function __movingTrophy_updateComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this.setNewTrophyPadding();
         }
      }
      
      public function ___SlimProgressBarComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this.handleCreationComplete(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bar() : HGroup
      {
         return this._97299bar;
      }
      
      public function set bar(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._97299bar;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._97299bar = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bar",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0069);
      }
      
      [Bindable(event="propertyChange")]
      public function get barEnd() : BriskImageDynaLib
      {
         return this._1396262968barEnd;
      }
      
      public function set barEnd(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1396262968barEnd;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1396262968barEnd = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"barEnd",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0065);
      }
      
      [Bindable(event="propertyChange")]
      public function get barTint() : HGroup
      {
         return this._334036562barTint;
      }
      
      public function set barTint(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._334036562barTint;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._334036562barTint = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"barTint",_loc2_,param1));
                        }
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr006a);
               }
            }
         }
         addr0079:
      }
      
      [Bindable(event="propertyChange")]
      public function get movingTrophy() : BriskImageDynaLib
      {
         return this._1058183138movingTrophy;
      }
      
      public function set movingTrophy(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1058183138movingTrophy;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1058183138movingTrophy = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr0065);
                  }
                  §§goto(addr007c);
               }
               addr0065:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr007c:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"movingTrophy",_loc2_,param1));
                  }
               }
               §§goto(addr008b);
            }
            addr008b:
            return;
         }
         §§goto(addr0065);
      }
   }
}

