package net.bigpoint.cityrama.view.productionBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.detailViews.vo.SimpleItemVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class OutputItemRendered extends ItemRenderer
   {
      
      private var _906050231effectAmount:LocaLabel;
      
      private var _1715632060effectName:LocaLabel;
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function OutputItemRendered()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_ || _loc1_)
            {
               mx_internal::_document = this;
               §§goto(addr0026);
            }
            §§goto(addr007c);
         }
         addr0026:
         if(!_loc1_)
         {
            this.autoDrawBackground = false;
            if(_loc2_ || _loc2_)
            {
               this.percentWidth = 100;
               if(!_loc1_)
               {
                  this.maxWidth = 230;
                  if(!(_loc1_ && _loc1_))
                  {
                     addr007c:
                     this.mxmlContent = [this._OutputItemRendered_VGroup1_c()];
                  }
               }
            }
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr0041);
                  }
               }
               else
               {
                  addr0047:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            §§goto(addr0047);
         }
         addr0041:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:SimpleItemVo = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(!_loc5_)
         {
            if(param1 is SimpleItemVo)
            {
               addr0032:
               _loc2_ = param1 as SimpleItemVo;
               if(_loc6_ || Boolean(_loc2_))
               {
                  §§push(this.icon);
                  if(_loc6_ || Boolean(this))
                  {
                     §§push(_loc2_.imageId);
                     if(!(_loc5_ && Boolean(this)))
                     {
                        §§pop().dynaBmpSourceName = §§pop();
                        if(!_loc5_)
                        {
                           addr007c:
                           this.icon.dynaLibName = _loc2_.dynaLibName;
                           addr0079:
                           if(!_loc5_)
                           {
                              this.effectName.text = _loc2_.text;
                              if(!(_loc5_ && Boolean(_loc3_)))
                              {
                                 §§push(LocaUtils.getThousendSeperatedNumber(Math.abs(_loc2_.maxAmount)));
                                 if(_loc6_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc5_)
                                    {
                                       _loc3_ = §§pop();
                                       if(_loc6_)
                                       {
                                          addr00ca:
                                          §§push(LocaUtils.getThousendSeperatedNumber(Math.abs(_loc2_.amount)));
                                          if(_loc6_ || Boolean(param1))
                                          {
                                             addr00e8:
                                             §§push(§§pop());
                                             if(_loc6_)
                                             {
                                                §§goto(addr00ef);
                                             }
                                             §§goto(addr0129);
                                          }
                                          addr00ef:
                                          _loc4_ = §§pop();
                                          if(!(_loc5_ && Boolean(_loc2_)))
                                          {
                                             §§push(this.effectAmount);
                                             §§push(_loc4_ + "/");
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() + _loc3_);
                                             }
                                             §§pop().text = §§pop();
                                             if(_loc6_)
                                             {
                                                addr0129:
                                                if(_loc2_.imageTooltip != null)
                                                {
                                                   if(!(_loc5_ && Boolean(_loc2_)))
                                                   {
                                                      addr013c:
                                                      this.toolTip = _loc2_.imageTooltip;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr0143);
                                       }
                                       §§goto(addr013c);
                                    }
                                 }
                                 §§goto(addr00e8);
                              }
                           }
                           §§goto(addr013c);
                        }
                        §§goto(addr0143);
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr0079);
               }
               §§goto(addr00ca);
            }
            addr0143:
            return;
         }
         §§goto(addr0032);
      }
      
      private function _OutputItemRendered_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_)
               {
                  _loc1_.gap = 0;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.percentHeight = 100;
                     addr0059:
                     if(!_loc2_)
                     {
                        _loc1_.mxmlContent = [this._OutputItemRendered_LocaLabel1_i(),this._OutputItemRendered_BriskImageDynaLib1_c(),this._OutputItemRendered_HGroup1_c()];
                        if(_loc3_)
                        {
                           addr008c:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr0098:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr0098);
                  }
                  addr009c:
                  return _loc1_;
               }
               §§goto(addr008c);
            }
            §§goto(addr0059);
         }
         §§goto(addr0098);
      }
      
      private function _OutputItemRendered_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.left = 32;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  _loc1_.maxDisplayedLines = 1;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.styleName = "residentialOutputItem";
                     §§goto(addr004c);
                  }
                  §§goto(addr008c);
               }
            }
            addr004c:
            if(_loc2_ || _loc3_)
            {
               addr006d:
               _loc1_.id = "effectName";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr008c:
                        _loc1_.document = this;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           §§goto(addr00a9);
                        }
                        §§goto(addr00bb);
                     }
                  }
                  addr00a9:
                  this.effectName = _loc1_;
                  if(_loc2_ || _loc2_)
                  {
                     addr00bb:
                     BindingManager.executeBindings(this,"effectName",this.effectName);
                  }
                  §§goto(addr00c8);
               }
               §§goto(addr00bb);
            }
            addr00c8:
            return _loc1_;
         }
         §§goto(addr006d);
      }
      
      private function _OutputItemRendered_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopupNEW";
            if(_loc2_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "layer_list_line";
               if(!(_loc3_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0071:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0075);
               }
            }
            §§goto(addr0071);
         }
         addr0075:
         return _loc1_;
      }
      
      private function _OutputItemRendered_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.horizontalAlign = "right";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     _loc1_.paddingRight = 10;
                     if(_loc2_)
                     {
                        §§goto(addr006e);
                     }
                     §§goto(addr0080);
                  }
                  addr006e:
                  _loc1_.gap = 3;
                  if(_loc2_ || Boolean(this))
                  {
                     addr0080:
                     _loc1_.height = 28;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0092:
                        _loc1_.maxHeight = 28;
                        if(!_loc3_)
                        {
                           §§goto(addr00a8);
                        }
                     }
                     §§goto(addr00d2);
                  }
                  addr00a8:
                  _loc1_.mxmlContent = [this._OutputItemRendered_LocaLabel2_i(),this._OutputItemRendered_BriskImageDynaLib2_i()];
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr00d2:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0080);
            }
            §§goto(addr00d2);
         }
         §§goto(addr0092);
      }
      
      private function _OutputItemRendered_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc2_)
         {
            _loc1_.styleName = "postitHeader";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.id = "effectAmount";
               if(!_loc2_)
               {
                  addr0052:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr007b:
                           this.effectAmount = _loc1_;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr008d:
                              BindingManager.executeBindings(this,"effectAmount",this.effectAmount);
                           }
                        }
                        §§goto(addr009a);
                     }
                  }
                  §§goto(addr007b);
               }
               addr009a:
               return _loc1_;
            }
            §§goto(addr008d);
         }
         §§goto(addr0052);
      }
      
      private function _OutputItemRendered_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(!_loc3_)
            {
               _loc1_.id = "icon";
               if(!(_loc3_ && Boolean(this)))
               {
                  addr004f:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           addr0079:
                           this.icon = _loc1_;
                           if(_loc2_)
                           {
                              addr0083:
                              BindingManager.executeBindings(this,"icon",this.icon);
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0079);
               }
               §§goto(addr0083);
            }
            §§goto(addr004f);
         }
         §§goto(addr0083);
      }
      
      [Bindable(event="propertyChange")]
      public function get effectAmount() : LocaLabel
      {
         return this._906050231effectAmount;
      }
      
      public function set effectAmount(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._906050231effectAmount;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._906050231effectAmount = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectAmount",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0074);
            }
         }
         addr0083:
      }
      
      [Bindable(event="propertyChange")]
      public function get effectName() : LocaLabel
      {
         return this._1715632060effectName;
      }
      
      public function set effectName(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1715632060effectName;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1715632060effectName = param1;
                  if(!_loc4_)
                  {
                     addr0053:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectName",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : BriskImageDynaLib
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3226745icon;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._3226745icon = param1;
                  if(!_loc3_)
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005f);
      }
   }
}

