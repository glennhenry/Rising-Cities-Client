package net.bigpoint.cityrama.view.cinema.ui
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.cinema.vo.CinemaLayerVo;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class CinemaVideoUnavailableComponent extends Group
   {
      
      private var _1166031975headerLabel:LocaLabel;
      
      private var _8439162mainText:LocaLabel;
      
      private var _110364485timer:TimerBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CinemaLayerVo;
      
      private var _isDirty:Boolean;
      
      public function CinemaVideoUnavailableComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
            if(_loc1_ || _loc2_)
            {
               mx_internal::_document = this;
               if(_loc1_)
               {
                  addr0049:
                  this.width = 515;
                  if(!(_loc2_ && _loc2_))
                  {
                     this.height = 240;
                     if(_loc1_ || Boolean(this))
                     {
                        addr0079:
                        this.mxmlContent = [this._CinemaVideoUnavailableComponent_BriskImageDynaLib1_c(),this._CinemaVideoUnavailableComponent_VGroup1_c()];
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr0079);
               }
               addr008a:
               return;
            }
            §§goto(addr0079);
         }
         §§goto(addr0049);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     return;
                  }
               }
            }
         }
         this.__moduleFactoryInitialized = true;
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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.commitProperties();
            if(!(_loc1_ && Boolean(this)))
            {
               §§push(this._data);
               if(_loc2_ || Boolean(this))
               {
                  §§push(§§pop());
                  if(!(_loc1_ && Boolean(this)))
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     if(_temp_5)
                     {
                        if(!_loc1_)
                        {
                           addr0051:
                           §§pop();
                           if(!(_loc1_ && Boolean(this)))
                           {
                              §§goto(addr0071);
                           }
                           §§goto(addr00df);
                        }
                     }
                     addr0071:
                     §§push(this._isDirty);
                     if(!(_loc1_ && _loc1_))
                     {
                        §§push(§§pop());
                     }
                     if(§§pop())
                     {
                        if(!_loc1_)
                        {
                           this._isDirty = false;
                           if(!_loc1_)
                           {
                              addr008e:
                              §§push(this.timer);
                              if(_loc2_)
                              {
                                 §§push(this._data);
                                 if(!_loc1_)
                                 {
                                    §§push(§§pop().availabilityTimer);
                                    if(_loc2_ || _loc1_)
                                    {
                                       §§push(§§pop() == null);
                                       if(!(_loc1_ && Boolean(this)))
                                       {
                                          §§push(!§§pop());
                                       }
                                       §§pop().visible = §§pop();
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          addr00d3:
                                          addr00cf:
                                          if(this._data.availabilityTimer)
                                          {
                                             if(_loc2_)
                                             {
                                                addr00f4:
                                                this.timer.data = this._data.availabilityTimer;
                                                addr00f1:
                                                addr00e3:
                                                addr00df:
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   addr0103:
                                                   this.headerLabel.text = this._data.headerText;
                                                   if(!_loc1_)
                                                   {
                                                      this.mainText.text = this._data.layerText;
                                                   }
                                                }
                                                §§goto(addr0122);
                                             }
                                          }
                                          §§goto(addr0103);
                                       }
                                       §§goto(addr0122);
                                    }
                                    §§goto(addr00f4);
                                 }
                                 §§goto(addr00f1);
                              }
                              §§goto(addr00e3);
                           }
                           §§goto(addr0103);
                        }
                        §§goto(addr008e);
                     }
                     addr0122:
                     return;
                  }
                  §§goto(addr0051);
               }
               §§goto(addr00d3);
            }
            §§goto(addr00df);
         }
         §§goto(addr00cf);
      }
      
      public function set data(param1:CinemaLayerVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            if(!RandomUtilities.isEqual(this._data,param1))
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._data = param1;
                  if(_loc2_)
                  {
                     this._isDirty = true;
                     if(!(_loc3_ && _loc3_))
                     {
                        invalidateProperties();
                     }
                  }
               }
            }
         }
      }
      
      private function _CinemaVideoUnavailableComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!_loc2_)
            {
               §§goto(addr0042);
            }
            §§goto(addr004d);
         }
         addr0042:
         _loc1_.dynaBmpSourceName = "bluepost_upselling";
         if(!_loc2_)
         {
            addr004d:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _CinemaVideoUnavailableComponent_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = null;
         _loc1_ = new VGroup();
         if(_loc2_)
         {
            _loc1_.top = 44;
            if(!_loc3_)
            {
               _loc1_.bottom = 30;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.width = 340;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.percentHeight = 100;
                     if(!_loc3_)
                     {
                        _loc1_.horizontalCenter = 0;
                        §§goto(addr005c);
                     }
                     §§goto(addr00e3);
                  }
                  §§goto(addr0084);
               }
               §§goto(addr00a0);
            }
            addr005c:
            if(!_loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0084:
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.gap = 1;
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._CinemaVideoUnavailableComponent_Group2_c(),this._CinemaVideoUnavailableComponent_HGroup2_c(),this._CinemaVideoUnavailableComponent_TimerBarComponent1_i()];
                        addr00a0:
                        if(!(_loc3_ && _loc2_))
                        {
                           addr00cf:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(this))
                              {
                                 addr00e3:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00e7);
                     }
                     §§goto(addr00cf);
                  }
                  §§goto(addr00e3);
               }
               §§goto(addr00cf);
            }
            addr00e7:
            return _loc1_;
         }
         §§goto(addr00e3);
      }
      
      private function _CinemaVideoUnavailableComponent_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.height = 40;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._CinemaVideoUnavailableComponent_BlueBarComponent1_c(),this._CinemaVideoUnavailableComponent_BriskImageDynaLib2_c(),this._CinemaVideoUnavailableComponent_HGroup1_c()];
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr007d:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr007d);
               }
               addr0081:
               return _loc1_;
            }
         }
         §§goto(addr007d);
      }
      
      private function _CinemaVideoUnavailableComponent_BlueBarComponent1_c() : BlueBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  addr0049:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0049);
      }
      
      private function _CinemaVideoUnavailableComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_rewardLayer";
            if(_loc2_)
            {
               addr004b:
               _loc1_.dynaBmpSourceName = "icon_cinema";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr004b);
      }
      
      private function _CinemaVideoUnavailableComponent_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 70;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.percentHeight = 98;
               if(_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.verticalCenter = 0;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§goto(addr0075);
                     }
                     §§goto(addr0080);
                  }
               }
            }
            addr0075:
            _loc1_.verticalAlign = "middle";
            if(!_loc3_)
            {
               addr0080:
               _loc1_.horizontalAlign = "center";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.mxmlContent = [this._CinemaVideoUnavailableComponent_LocaLabel1_i()];
                  §§goto(addr0092);
               }
               §§goto(addr00b5);
            }
            addr0092:
            if(_loc2_ || Boolean(_loc1_))
            {
               addr00b5:
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0080);
      }
      
      private function _CinemaVideoUnavailableComponent_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.styleName = "fieldInfoHeader";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.percentWidth = 100;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(_loc2_)
                  {
                     §§goto(addr0064);
                  }
                  §§goto(addr00b1);
               }
               addr0064:
               _loc1_.id = "headerLabel";
               if(_loc2_ || Boolean(_loc1_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        addr0096:
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           addr009f:
                           this.headerLabel = _loc1_;
                           if(_loc2_ || Boolean(this))
                           {
                              addr00b1:
                              BindingManager.executeBindings(this,"headerLabel",this.headerLabel);
                           }
                        }
                     }
                     §§goto(addr00be);
                  }
                  §§goto(addr009f);
               }
               addr00be:
               return _loc1_;
            }
            §§goto(addr009f);
         }
         §§goto(addr0096);
      }
      
      private function _CinemaVideoUnavailableComponent_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.height = 100;
            if(!_loc2_)
            {
               _loc1_.percentWidth = 85;
               if(!_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.mxmlContent = [this._CinemaVideoUnavailableComponent_LocaLabel2_i()];
                        addr006b:
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr0090);
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr00a4);
               }
               §§goto(addr006b);
            }
         }
         addr0090:
         if(!_loc1_.document)
         {
            if(_loc3_ || _loc3_)
            {
               addr00a4:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _CinemaVideoUnavailableComponent_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "eventRuntime";
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  §§goto(addr0042);
               }
               §§goto(addr0057);
            }
            §§goto(addr0076);
         }
         addr0042:
         _loc1_.id = "mainText";
         if(!_loc2_)
         {
            addr0057:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  §§goto(addr0063);
               }
               §§goto(addr0076);
            }
            §§goto(addr006c);
         }
         addr0063:
         _loc1_.document = this;
         if(_loc3_)
         {
            addr006c:
            this.mainText = _loc1_;
            if(!_loc2_)
            {
               addr0076:
               BindingManager.executeBindings(this,"mainText",this.mainText);
            }
         }
         return _loc1_;
      }
      
      private function _CinemaVideoUnavailableComponent_TimerBarComponent1_i() : TimerBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(!_loc3_)
         {
            _loc1_.width = 181;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.showBoostButton = false;
               if(_loc2_ || _loc3_)
               {
                  addr0055:
                  _loc1_.id = "timer";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0068:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr0097:
                              this.timer = _loc1_;
                              if(_loc2_)
                              {
                                 BindingManager.executeBindings(this,"timer",this.timer);
                              }
                           }
                        }
                        return _loc1_;
                     }
                  }
               }
               §§goto(addr0097);
            }
            §§goto(addr0055);
         }
         §§goto(addr0068);
      }
      
      [Bindable(event="propertyChange")]
      public function get headerLabel() : LocaLabel
      {
         return this._1166031975headerLabel;
      }
      
      public function set headerLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1166031975headerLabel;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1166031975headerLabel = param1;
                  addr0041:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
               }
               §§goto(addr0071);
            }
            addr0080:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get mainText() : LocaLabel
      {
         return this._8439162mainText;
      }
      
      public function set mainText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._8439162mainText;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._8439162mainText = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr0065:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0065);
            }
            addr0084:
            return;
         }
         §§goto(addr0075);
      }
      
      [Bindable(event="propertyChange")]
      public function get timer() : TimerBarComponent
      {
         return this._110364485timer;
      }
      
      public function set timer(param1:TimerBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._110364485timer;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._110364485timer = param1;
                  addr0045:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timer",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0074);
            }
            addr0083:
            return;
         }
         §§goto(addr0045);
      }
   }
}

