package net.bigpoint.cityrama.view.featuredEvent.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.featuredEvent.vo.FeaturedRunningEventVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.SlimProgressBarTimer;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class FeaturedEventMultipleItemRenderer extends ItemRenderer
   {
      
      private var _1425079635dividerLine:BriskImageDynaLib;
      
      private var _1213523686infoLabel:LocaLabel;
      
      private var _1222780865progressBarTimer:SlimProgressBarTimer;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:FeaturedRunningEventVo;
      
      private var _isDirty:Boolean;
      
      public function FeaturedEventMultipleItemRenderer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(_loc1_ || _loc2_)
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.autoDrawBackground = false;
                  addr0041:
                  if(_loc1_)
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr0071);
               }
               addr0055:
               this.percentWidth = 100;
               if(_loc1_)
               {
                  this.percentHeight = 100;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0071:
                     this.mxmlContent = [this._FeaturedEventMultipleItemRenderer_VGroup1_c()];
                  }
               }
               §§goto(addr007c);
            }
            addr007c:
            return;
         }
         §§goto(addr0041);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(param1))
            {
               addr004d:
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr004d);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            super.commitProperties();
            if(_loc2_ || _loc2_)
            {
               §§push(Boolean(this._data));
               if(_loc2_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr006b:
                           §§push(this._isDirty);
                           if(!_loc3_)
                           {
                              addr006a:
                              §§push(§§pop());
                           }
                           if(§§pop())
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 this._isDirty = false;
                                 if(_loc2_)
                                 {
                                    this.infoLabel.text = this._data.infoText;
                                    if(_loc2_ || _loc2_)
                                    {
                                       this.progressBarTimer.data = this._data.timerVo;
                                       addr00a0:
                                       if(_loc2_ || Boolean(this))
                                       {
                                          addr00c6:
                                          this.dividerLine.visible = this.dividerLine.includeInLayout = this._data.showDivider;
                                       }
                                       §§goto(addr00de);
                                    }
                                    §§goto(addr00c6);
                                 }
                                 §§goto(addr00de);
                              }
                              §§goto(addr00a0);
                           }
                        }
                        §§goto(addr00de);
                     }
                     §§goto(addr006a);
                  }
               }
               §§goto(addr006b);
            }
            addr00de:
            return;
         }
         §§goto(addr00a0);
      }
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.data = param1;
            if(!_loc2_)
            {
               if(!RandomUtilities.isEqual(param1,this._data))
               {
                  if(_loc3_)
                  {
                     this._data = param1 as FeaturedRunningEventVo;
                     if(!(_loc2_ && Boolean(param1)))
                     {
                        addr0057:
                        this._isDirty = true;
                     }
                     §§goto(addr005c);
                  }
                  §§goto(addr0057);
               }
            }
         }
         addr005c:
      }
      
      private function _FeaturedEventMultipleItemRenderer_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.mxmlContent = [this._FeaturedEventMultipleItemRenderer_VGroup2_c(),this._FeaturedEventMultipleItemRenderer_HGroup1_c(),this._FeaturedEventMultipleItemRenderer_BriskImageDynaLib2_i()];
                     if(!_loc2_)
                     {
                        addr0083:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0093);
            }
            §§goto(addr0083);
         }
         addr0093:
         return _loc1_;
      }
      
      private function _FeaturedEventMultipleItemRenderer_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.percentWidth = 80;
                  if(_loc2_)
                  {
                     §§goto(addr0070);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0080);
            }
            addr0070:
            _loc1_.mxmlContent = [this._FeaturedEventMultipleItemRenderer_LocaLabel1_i()];
            if(!_loc3_)
            {
               addr0080:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr008c:
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr0090);
         }
         addr0090:
         return _loc1_;
      }
      
      private function _FeaturedEventMultipleItemRenderer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.styleName = "residentialCycleText";
            if(!_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.id = "infoLabel";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              §§goto(addr0083);
                           }
                           §§goto(addr008d);
                        }
                     }
                     addr0083:
                     this.infoLabel = _loc1_;
                     if(!_loc3_)
                     {
                        addr008d:
                        BindingManager.executeBindings(this,"infoLabel",this.infoLabel);
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr008d);
               }
               §§goto(addr009a);
            }
            §§goto(addr0083);
         }
         addr009a:
         return _loc1_;
      }
      
      private function _FeaturedEventMultipleItemRenderer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  addr0047:
                  _loc1_.gap = 4;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0059:
                     _loc1_.percentWidth = 80;
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.mxmlContent = [this._FeaturedEventMultipleItemRenderer_BriskImageDynaLib1_c(),this._FeaturedEventMultipleItemRenderer_SlimProgressBarTimer1_i()];
                        if(_loc3_)
                        {
                           §§goto(addr008e);
                        }
                     }
                  }
                  §§goto(addr009a);
               }
               §§goto(addr0059);
            }
            §§goto(addr0047);
         }
         addr008e:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               addr009a:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _FeaturedEventMultipleItemRenderer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "layer_clock_mini_icon";
               if(_loc2_)
               {
                  _loc1_.width = 18;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.height = 17;
                     addr005b:
                     if(_loc2_ || _loc2_)
                     {
                        addr0079:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr008d:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0091);
                     }
                     §§goto(addr008d);
                  }
                  addr0091:
                  return _loc1_;
               }
               §§goto(addr005b);
            }
            §§goto(addr0079);
         }
         §§goto(addr005b);
      }
      
      private function _FeaturedEventMultipleItemRenderer_SlimProgressBarTimer1_i() : SlimProgressBarTimer
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SlimProgressBarTimer = new SlimProgressBarTimer();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               addr0037:
               _loc1_.revertProgress = true;
               if(_loc3_)
               {
                  §§goto(addr004b);
               }
               §§goto(addr0077);
            }
            addr004b:
            _loc1_.id = "progressBarTimer";
            if(!(_loc2_ && _loc2_))
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr0077:
                     _loc1_.document = this;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        §§goto(addr0088);
                     }
                     §§goto(addr0092);
                  }
               }
               addr0088:
               this.progressBarTimer = _loc1_;
               if(_loc3_)
               {
                  addr0092:
                  BindingManager.executeBindings(this,"progressBarTimer",this.progressBarTimer);
               }
               §§goto(addr009f);
            }
            addr009f:
            return _loc1_;
         }
         §§goto(addr0037);
      }
      
      private function _FeaturedEventMultipleItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaBmpSourceName = "infolayer_divider_new";
            if(_loc2_)
            {
               _loc1_.dynaLibName = "gui_infield_gui_infolayer";
               if(!_loc3_)
               {
                  addr0036:
                  _loc1_.includeInLayout = false;
                  if(_loc2_)
                  {
                     _loc1_.visible = false;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.id = "dividerLine";
                        if(!_loc3_)
                        {
                           addr0067:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    §§goto(addr0088);
                                 }
                              }
                              §§goto(addr009a);
                           }
                        }
                        addr0088:
                        this.dividerLine = _loc1_;
                        if(_loc2_ || Boolean(this))
                        {
                           addr009a:
                           BindingManager.executeBindings(this,"dividerLine",this.dividerLine);
                        }
                        §§goto(addr00a7);
                     }
                  }
                  §§goto(addr0067);
               }
               §§goto(addr009a);
            }
            addr00a7:
            return _loc1_;
         }
         §§goto(addr0036);
      }
      
      [Bindable(event="propertyChange")]
      public function get dividerLine() : BriskImageDynaLib
      {
         return this._1425079635dividerLine;
      }
      
      public function set dividerLine(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1425079635dividerLine;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1425079635dividerLine = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dividerLine",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0071);
               }
            }
            addr0080:
            return;
         }
         §§goto(addr0071);
      }
      
      [Bindable(event="propertyChange")]
      public function get infoLabel() : LocaLabel
      {
         return this._1213523686infoLabel;
      }
      
      public function set infoLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1213523686infoLabel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1213523686infoLabel = param1;
                  if(_loc4_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0074);
                  }
               }
               §§goto(addr0065);
            }
            addr0074:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBarTimer() : SlimProgressBarTimer
      {
         return this._1222780865progressBarTimer;
      }
      
      public function set progressBarTimer(param1:SlimProgressBarTimer) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1222780865progressBarTimer;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  addr0047:
                  this._1222780865progressBarTimer = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr007c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBarTimer",_loc2_,param1));
                        }
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr007c);
               }
            }
            addr008b:
            return;
         }
         §§goto(addr0047);
      }
   }
}

