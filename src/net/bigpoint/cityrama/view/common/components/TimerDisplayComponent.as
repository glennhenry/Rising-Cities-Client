package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.view.common.components.vo.TimerDisplayComponentVo;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ProgressBarComponent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class TimerDisplayComponent extends Group
   {
      
      private var _1596012341infiniteGroup:VGroup;
      
      private var _1591914176infiniteLabel:LocaLabel;
      
      private var _1131509414progressBar:ProgressBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:TimerDisplayComponentVo;
      
      private var _isDirty:Boolean;
      
      public function TimerDisplayComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(_loc1_ || _loc2_)
               {
                  addr0041:
                  this.mxmlContent = [this._TimerDisplayComponent_HGroup1_c()];
               }
               §§goto(addr004c);
            }
            §§goto(addr0041);
         }
         addr004c:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(this))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || _loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
         }
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            super.commitProperties();
            if(_loc3_)
            {
               §§push(this._data);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(§§pop());
                  if(!(_loc2_ && _loc3_))
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     if(_temp_5)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           §§pop();
                           if(!_loc2_)
                           {
                              §§push(this._isDirty);
                              if(_loc3_)
                              {
                                 addr006c:
                                 §§push(§§pop());
                                 if(_loc3_)
                                 {
                                    §§goto(addr0072);
                                 }
                                 §§goto(addr0111);
                              }
                              §§goto(addr0072);
                           }
                           §§goto(addr00e4);
                        }
                        §§goto(addr0111);
                     }
                     addr0072:
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           addr007b:
                           this._isDirty = false;
                           if(_loc3_)
                           {
                              §§push(this.progressBar);
                              if(_loc3_)
                              {
                                 §§push(this.progressBar);
                                 §§push(this._data.isInfinite);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§push(!§§pop());
                                 }
                                 var _loc1_:*;
                                 §§pop().visible = _loc1_ = §§pop();
                                 §§pop().includeInLayout = _loc1_;
                                 if(!_loc2_)
                                 {
                                    var _temp_10:* = this.infiniteGroup;
                                    this.infiniteGroup.visible = _loc1_ = this._data.isInfinite;
                                    _temp_10.includeInLayout = _loc1_;
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr00e4:
                                       this.infiniteLabel.text = ResourceManager.getInstance().getString(String("rcl.miniLayer.hip"),String("rcl.miniLayer.hip.equip.infinite"));
                                       if(!_loc2_)
                                       {
                                          addr0111:
                                          addr010e:
                                          addr010a:
                                          if(!this._data.isInfinite)
                                          {
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                §§push(this.progressBar);
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   §§push(this._data);
                                                   if(!(_loc2_ && Boolean(this)))
                                                   {
                                                      §§pop().barColours = §§pop().barColours;
                                                      if(_loc3_)
                                                      {
                                                         addr015a:
                                                         §§push(this.progressBar);
                                                         if(!(_loc2_ && _loc3_))
                                                         {
                                                            §§push(this._data);
                                                            if(!_loc2_)
                                                            {
                                                               addr0174:
                                                               §§pop().label = §§pop().label;
                                                               if(!_loc2_)
                                                               {
                                                                  addr0187:
                                                                  this.progressBar.progress = this._data.progress;
                                                                  addr0183:
                                                                  addr017f:
                                                               }
                                                               §§goto(addr018d);
                                                            }
                                                            §§goto(addr0187);
                                                         }
                                                         §§goto(addr0183);
                                                      }
                                                      §§goto(addr018d);
                                                   }
                                                   §§goto(addr0174);
                                                }
                                                §§goto(addr0183);
                                             }
                                          }
                                          §§goto(addr018d);
                                       }
                                       §§goto(addr017f);
                                    }
                                 }
                                 §§goto(addr015a);
                              }
                              §§goto(addr0183);
                           }
                           §§goto(addr015a);
                        }
                        §§goto(addr00e4);
                     }
                     addr018d:
                     return;
                  }
                  §§goto(addr006c);
               }
               §§goto(addr010e);
            }
            §§goto(addr007b);
         }
         §§goto(addr010a);
      }
      
      public function setData(param1:TimerDisplayComponentVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._data = param1;
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr0052);
                  }
                  §§goto(addr005c);
               }
               addr0052:
               this._isDirty = true;
               if(!_loc2_)
               {
                  addr005c:
                  invalidateProperties();
               }
               §§goto(addr0061);
            }
            addr0061:
            return;
         }
         §§goto(addr0052);
      }
      
      private function _TimerDisplayComponent_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_)
               {
                  _loc1_.width = 160;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.mxmlContent = [this._TimerDisplayComponent_BriskImageDynaLib1_c(),this._TimerDisplayComponent_ProgressBarComponent1_i(),this._TimerDisplayComponent_VGroup1_i()];
                     addr005c:
                     if(!(_loc2_ && _loc2_))
                     {
                        addr008e:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr005c);
            }
         }
         §§goto(addr008e);
      }
      
      private function _TimerDisplayComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "timer_clock";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.width = 25;
                  §§goto(addr004b);
               }
            }
            §§goto(addr0062);
         }
         addr004b:
         if(_loc3_)
         {
            addr0062:
            _loc1_.height = 25;
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _TimerDisplayComponent_ProgressBarComponent1_i() : ProgressBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ProgressBarComponent = new ProgressBarComponent();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.progress = 0.5;
            if(!_loc2_)
            {
               _loc1_.id = "progressBar";
               if(_loc3_ || Boolean(_loc1_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr006c:
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr0075:
                           this.progressBar = _loc1_;
                           if(!(_loc2_ && _loc2_))
                           {
                              addr0087:
                              BindingManager.executeBindings(this,"progressBar",this.progressBar);
                           }
                           §§goto(addr0094);
                        }
                        §§goto(addr0087);
                     }
                     addr0094:
                     return _loc1_;
                  }
                  §§goto(addr0075);
               }
               §§goto(addr006c);
            }
            §§goto(addr0075);
         }
         §§goto(addr0087);
      }
      
      private function _TimerDisplayComponent_VGroup1_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.horizontalAlign = "left";
                  if(_loc2_ || _loc3_)
                  {
                     addr0056:
                     _loc1_.verticalAlign = "middle";
                     if(!_loc3_)
                     {
                        addr006e:
                        _loc1_.visible = false;
                        if(_loc2_)
                        {
                           addr0077:
                           _loc1_.includeInLayout = false;
                           if(_loc2_)
                           {
                              _loc1_.gap = 0;
                              if(_loc2_)
                              {
                                 addr008a:
                                 _loc1_.mxmlContent = [this._TimerDisplayComponent_Group2_c(),this._TimerDisplayComponent_LocaLabel1_i()];
                                 if(_loc2_)
                                 {
                                    _loc1_.id = "infiniteGroup";
                                    if(_loc2_)
                                    {
                                       addr00ab:
                                       if(!_loc1_.document)
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             addr00c9:
                                             _loc1_.document = this;
                                             if(_loc2_)
                                             {
                                                addr00d2:
                                                this.infiniteGroup = _loc1_;
                                                if(_loc2_ || _loc2_)
                                                {
                                                   addr00e4:
                                                   BindingManager.executeBindings(this,"infiniteGroup",this.infiniteGroup);
                                                }
                                             }
                                          }
                                          §§goto(addr00f1);
                                       }
                                       §§goto(addr00d2);
                                    }
                                    addr00f1:
                                    return _loc1_;
                                 }
                                 §§goto(addr00d2);
                              }
                              §§goto(addr00ab);
                           }
                           §§goto(addr008a);
                        }
                        §§goto(addr00c9);
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr00e4);
               }
               §§goto(addr008a);
            }
            §§goto(addr0056);
         }
         §§goto(addr006e);
      }
      
      private function _TimerDisplayComponent_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.height = 3;
            if(_loc3_ || Boolean(this))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0063:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0063);
      }
      
      private function _TimerDisplayComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.styleName = "blueHighlight";
            if(_loc3_)
            {
               _loc1_.maxDisplayedLines = 1;
               if(_loc3_)
               {
                  _loc1_.id = "infiniteLabel";
                  if(_loc3_ || _loc2_)
                  {
                     addr0069:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0075:
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              §§goto(addr007e);
                           }
                           §§goto(addr0088);
                        }
                     }
                     addr007e:
                     this.infiniteLabel = _loc1_;
                     if(_loc3_)
                     {
                        addr0088:
                        BindingManager.executeBindings(this,"infiniteLabel",this.infiniteLabel);
                     }
                  }
                  §§goto(addr0095);
               }
               §§goto(addr0075);
            }
            addr0095:
            return _loc1_;
         }
         §§goto(addr0069);
      }
      
      [Bindable(event="propertyChange")]
      public function get infiniteGroup() : VGroup
      {
         return this._1596012341infiniteGroup;
      }
      
      public function set infiniteGroup(param1:VGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1596012341infiniteGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1596012341infiniteGroup = param1;
                  if(_loc3_)
                  {
                     addr0041:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infiniteGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0060);
               }
               §§goto(addr0041);
            }
         }
         addr0060:
      }
      
      [Bindable(event="propertyChange")]
      public function get infiniteLabel() : LocaLabel
      {
         return this._1591914176infiniteLabel;
      }
      
      public function set infiniteLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1591914176infiniteLabel;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  addr0057:
                  this._1591914176infiniteLabel = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infiniteLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr007f);
                  }
               }
               §§goto(addr0070);
            }
            addr007f:
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : ProgressBarComponent
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:ProgressBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1131509414progressBar;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1131509414progressBar = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0053);
                  }
                  §§goto(addr0062);
               }
               addr0053:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0062:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
                  }
               }
               §§goto(addr0071);
            }
            addr0071:
            return;
         }
         §§goto(addr0062);
      }
   }
}

