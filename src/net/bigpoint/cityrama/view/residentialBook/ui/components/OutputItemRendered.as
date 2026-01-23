package net.bigpoint.cityrama.view.residentialBook.ui.components
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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  addr0039:
                  this.autoDrawBackground = false;
                  if(_loc1_ || Boolean(this))
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr0073);
               }
               addr0055:
               this.percentWidth = 100;
               if(_loc1_ || _loc1_)
               {
                  this.maxWidth = 254;
                  if(!_loc2_)
                  {
                     addr0073:
                     this.mxmlContent = [this._OutputItemRendered_VGroup1_c()];
                  }
               }
               return;
            }
            §§goto(addr0073);
         }
         §§goto(addr0039);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               addr0045:
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr0045);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:SimpleItemVo = null;
         if(_loc4_ || _loc3_)
         {
            if(param1 is SimpleItemVo)
            {
               addr002f:
               _loc2_ = param1 as SimpleItemVo;
               if(!(_loc3_ && _loc3_))
               {
                  §§push(this.icon);
                  if(_loc4_)
                  {
                     §§push(_loc2_.imageId);
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        §§pop().dynaBmpSourceName = §§pop();
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0084:
                           this.icon.dynaLibName = _loc2_.dynaLibName;
                           addr0081:
                           if(!_loc3_)
                           {
                              this.effectName.text = _loc2_.text;
                              if(_loc4_)
                              {
                                 this.effectAmount.text = LocaUtils.getThousendSeperatedNumber(Math.abs(_loc2_.amount));
                                 §§goto(addr009a);
                              }
                              §§goto(addr00e0);
                           }
                        }
                        addr009a:
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           if(_loc2_.imageTooltip != null)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 addr00e0:
                                 this.toolTip = _loc2_.imageTooltip;
                              }
                           }
                        }
                        §§goto(addr00e7);
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0081);
               }
               §§goto(addr00e0);
            }
            addr00e7:
            return;
         }
         §§goto(addr002f);
      }
      
      private function _OutputItemRendered_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.width = 234;
            if(_loc2_ || _loc2_)
            {
               addr0039:
               _loc1_.verticalAlign = "middle";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.gap = 0;
                  if(_loc2_)
                  {
                     addr0063:
                     _loc1_.percentHeight = 100;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.mxmlContent = [this._OutputItemRendered_LocaLabel1_i(),this._OutputItemRendered_BriskImageDynaLib1_c(),this._OutputItemRendered_HGroup1_c()];
                        if(!(_loc3_ && _loc2_))
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr00b2:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00b6);
                        }
                     }
                     §§goto(addr00b2);
                  }
                  addr00b6:
                  return _loc1_;
               }
               §§goto(addr0063);
            }
            §§goto(addr00b2);
         }
         §§goto(addr0039);
      }
      
      private function _OutputItemRendered_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.left = 32;
            if(_loc2_ || _loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.maxDisplayedLines = 1;
                  if(_loc2_)
                  {
                     _loc1_.styleName = "residentialOutputItem";
                     if(!_loc3_)
                     {
                        _loc1_.id = "effectName";
                        if(!_loc3_)
                        {
                           addr0073:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr008a:
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    addr0093:
                                    this.effectName = _loc1_;
                                    if(_loc2_ || _loc3_)
                                    {
                                       addr00a5:
                                       BindingManager.executeBindings(this,"effectName",this.effectName);
                                    }
                                 }
                                 §§goto(addr00b2);
                              }
                              §§goto(addr00a5);
                           }
                           §§goto(addr0093);
                        }
                        §§goto(addr00a5);
                     }
                     §§goto(addr0073);
                  }
                  §§goto(addr00a5);
               }
               addr00b2:
               return _loc1_;
            }
            §§goto(addr008a);
         }
         §§goto(addr00a5);
      }
      
      private function _OutputItemRendered_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopupNEW";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "layer_list_line";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _OutputItemRendered_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.horizontalAlign = "right";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.verticalAlign = "middle";
               if(!_loc3_)
               {
                  §§goto(addr0045);
               }
               §§goto(addr00a8);
            }
            addr0045:
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.paddingRight = 10;
               if(_loc2_ || Boolean(this))
               {
                  §§goto(addr006d);
               }
               §§goto(addr009d);
            }
            addr006d:
            _loc1_.gap = 3;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.height = 28;
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr009d:
                  _loc1_.maxHeight = 28;
                  if(_loc2_)
                  {
                     §§goto(addr00a8);
                  }
                  §§goto(addr00ca);
               }
               addr00a8:
               _loc1_.mxmlContent = [this._OutputItemRendered_LocaLabel2_i(),this._OutputItemRendered_BriskImageDynaLib2_i()];
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr00ca:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr00ce);
            }
            addr00ce:
            return _loc1_;
         }
         §§goto(addr00a8);
      }
      
      private function _OutputItemRendered_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "postitHeader";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.id = "effectAmount";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc3_ || _loc3_)
                        {
                           addr0075:
                           this.effectAmount = _loc1_;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              BindingManager.executeBindings(this,"effectAmount",this.effectAmount);
                           }
                        }
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr0075);
               }
               addr0094:
               return _loc1_;
            }
         }
         §§goto(addr0075);
      }
      
      private function _OutputItemRendered_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.id = "icon";
               if(_loc2_)
               {
                  §§goto(addr005b);
               }
               §§goto(addr007a);
            }
            addr005b:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr0067:
                  _loc1_.document = this;
                  if(!_loc3_)
                  {
                     §§goto(addr0070);
                  }
               }
               §§goto(addr007a);
            }
            addr0070:
            this.icon = _loc1_;
            if(!_loc3_)
            {
               addr007a:
               BindingManager.executeBindings(this,"icon",this.icon);
            }
            return _loc1_;
         }
         §§goto(addr0067);
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
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._906050231effectAmount = param1;
                  addr0044:
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectAmount",_loc2_,param1));
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
         §§goto(addr0044);
      }
      
      [Bindable(event="propertyChange")]
      public function get effectName() : LocaLabel
      {
         return this._1715632060effectName;
      }
      
      public function set effectName(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1715632060effectName;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1715632060effectName = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr006f);
               }
               addr0060:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectName",_loc2_,param1));
                  }
               }
               §§goto(addr007e);
            }
            addr007e:
            return;
         }
         §§goto(addr006f);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._3226745icon = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006d);
               }
            }
            addr007c:
            return;
         }
         §§goto(addr0055);
      }
   }
}

