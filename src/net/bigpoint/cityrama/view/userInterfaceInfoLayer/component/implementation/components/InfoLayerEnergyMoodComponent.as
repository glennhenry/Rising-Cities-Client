package net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.InfoLayerConfigPlayfieldItemVo;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class InfoLayerEnergyMoodComponent extends Group
   {
      
      private var _1840699177energyGroup:HGroup;
      
      private var _1836601012energyLabel:LocaLabel;
      
      private var _899936824moodGroup:HGroup;
      
      private var _895838659moodLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:InfoLayerConfigPlayfieldItemVo;
      
      private var _dataDirty:Boolean;
      
      public function InfoLayerEnergyMoodComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               mx_internal::_document = this;
               if(!(_loc1_ && Boolean(this)))
               {
                  §§goto(addr0054);
               }
               §§goto(addr0066);
            }
            addr0054:
            this.percentWidth = 100;
            if(!(_loc1_ && Boolean(this)))
            {
               addr0066:
               this.mxmlContent = [this._InfoLayerEnergyMoodComponent_VGroup1_c()];
            }
            return;
         }
         §§goto(addr0066);
      }
      
      private static function getColorFromAmount(param1:Number) : uint
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(param1);
            if(!(_loc3_ && InfoLayerEnergyMoodComponent))
            {
               §§push(0);
               if(!_loc3_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc2_ || _loc3_)
                     {
                        §§push(14300688);
                        if(!(_loc3_ && _loc3_))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr0077:
                        addr007a:
                        addr0078:
                        if(param1 > 0)
                        {
                           if(!_loc3_)
                           {
                              §§push(8237580);
                              if(_loc2_ || InfoLayerEnergyMoodComponent)
                              {
                                 return §§pop();
                              }
                           }
                           else
                           {
                              addr0093:
                              §§push(7303023);
                           }
                           §§goto(addr0095);
                        }
                        §§goto(addr0093);
                     }
                     addr0095:
                     return §§pop();
                  }
                  §§goto(addr0077);
               }
               §§goto(addr007a);
            }
            §§goto(addr0078);
         }
         §§goto(addr0093);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               addr0029:
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         §§goto(addr0029);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.initialize();
         }
      }
      
      public function set data(param1:InfoLayerConfigPlayfieldItemVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._data = param1;
            if(_loc3_)
            {
               this._dataDirty = true;
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         if(!_loc5_)
         {
            super.commitProperties();
            if(!_loc5_)
            {
               if(this._dataDirty)
               {
                  if(!_loc5_)
                  {
                     this._dataDirty = false;
                     if(!_loc5_)
                     {
                        §§push(this._data);
                        if(!_loc5_)
                        {
                           §§push(§§pop().moodValue);
                           if(_loc4_)
                           {
                              §§push(§§pop());
                              if(!_loc5_)
                              {
                                 _loc1_ = §§pop();
                                 if(_loc4_)
                                 {
                                    addr0079:
                                    addr0067:
                                    addr0063:
                                    §§push(this._data.energyValue);
                                    if(!(_loc5_ && Boolean(this)))
                                    {
                                       addr0078:
                                       §§push(§§pop());
                                    }
                                    _loc2_ = §§pop();
                                    if(_loc4_)
                                    {
                                       §§push(this);
                                       §§push(this);
                                       if(!_loc5_)
                                       {
                                          §§push(!isNaN(_loc2_));
                                          if(_loc4_)
                                          {
                                             var _temp_2:* = §§pop();
                                             §§push(_temp_2);
                                             §§push(_temp_2);
                                             if(!(_loc5_ && Boolean(_loc1_)))
                                             {
                                                addr00c2:
                                                if(!§§pop())
                                                {
                                                   if(!(_loc5_ && Boolean(this)))
                                                   {
                                                      §§pop();
                                                      addr00b9:
                                                      §§push(!isNaN(_loc1_));
                                                   }
                                                }
                                                var _temp_5:* = §§pop();
                                                §§push(_temp_5);
                                                §§push(_temp_5);
                                             }
                                             var _loc3_:* = §§pop();
                                             §§pop().includeInLayout = §§pop();
                                             §§pop().visible = _loc3_;
                                             if(!(_loc5_ && Boolean(_loc1_)))
                                             {
                                                var _temp_8:* = this.moodGroup;
                                                this.moodGroup.includeInLayout = _loc3_ = !isNaN(_loc1_);
                                                _temp_8.visible = _loc3_;
                                                if(!_loc5_)
                                                {
                                                   var _temp_10:* = this.energyGroup;
                                                   this.energyGroup.includeInLayout = _loc3_ = !isNaN(_loc2_);
                                                   _temp_10.visible = _loc3_;
                                                   if(_loc4_ || Boolean(this))
                                                   {
                                                      addr012c:
                                                      §§push(this.moodLabel);
                                                      if(_loc4_)
                                                      {
                                                         §§pop().text = _loc1_.toString();
                                                         if(_loc4_)
                                                         {
                                                            addr0143:
                                                            §§push(this.energyLabel);
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               §§pop().text = _loc2_.toString();
                                                               if(_loc4_ || Boolean(this))
                                                               {
                                                                  addr017c:
                                                                  this.moodLabel.setStyle("color",getColorFromAmount(_loc1_));
                                                                  addr0178:
                                                                  if(_loc4_ || Boolean(this))
                                                                  {
                                                                     addr019c:
                                                                     this.energyLabel.setStyle("color",getColorFromAmount(_loc2_));
                                                                     addr0198:
                                                                  }
                                                                  §§goto(addr01aa);
                                                               }
                                                               §§goto(addr0198);
                                                            }
                                                            §§goto(addr019c);
                                                         }
                                                         §§goto(addr01aa);
                                                      }
                                                      §§goto(addr017c);
                                                   }
                                                   §§goto(addr0178);
                                                }
                                                §§goto(addr0143);
                                             }
                                             §§goto(addr01aa);
                                          }
                                          §§goto(addr00c2);
                                       }
                                       §§goto(addr00b9);
                                    }
                                    §§goto(addr0143);
                                 }
                                 §§goto(addr012c);
                              }
                              §§goto(addr0078);
                           }
                           §§goto(addr0079);
                        }
                        §§goto(addr0067);
                     }
                     §§goto(addr0178);
                  }
                  §§goto(addr0063);
               }
               addr01aa:
               return;
            }
            §§goto(addr0063);
         }
         §§goto(addr0178);
      }
      
      private function _InfoLayerEnergyMoodComponent_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.mxmlContent = [this._InfoLayerEnergyMoodComponent_HGroup1_c()];
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _InfoLayerEnergyMoodComponent_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_)
               {
                  §§goto(addr0051);
               }
               §§goto(addr0073);
            }
            addr0051:
            _loc1_.mxmlContent = [this._InfoLayerEnergyMoodComponent_HGroup2_i(),this._InfoLayerEnergyMoodComponent_HGroup3_i()];
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr0073:
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr0077);
         }
         addr0077:
         return _loc1_;
      }
      
      private function _InfoLayerEnergyMoodComponent_HGroup2_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_)
                  {
                     addr0064:
                     _loc1_.mxmlContent = [this._InfoLayerEnergyMoodComponent_LocaLabel1_i(),this._InfoLayerEnergyMoodComponent_BriskImageDynaLib1_c()];
                     if(!_loc2_)
                     {
                        _loc1_.id = "moodGroup";
                        if(_loc3_)
                        {
                           addr0085:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr00a6:
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    §§goto(addr00af);
                                 }
                              }
                              §§goto(addr00c1);
                           }
                           addr00af:
                           this.moodGroup = _loc1_;
                           if(_loc3_ || Boolean(this))
                           {
                              addr00c1:
                              BindingManager.executeBindings(this,"moodGroup",this.moodGroup);
                           }
                        }
                        §§goto(addr00ce);
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr00af);
               }
               §§goto(addr0064);
            }
            addr00ce:
            return _loc1_;
         }
         §§goto(addr00a6);
      }
      
      private function _InfoLayerEnergyMoodComponent_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.maxDisplayedLines = 1;
            if(_loc2_ || _loc2_)
            {
               _loc1_.styleName = "infoLabelRight";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.id = "moodLabel";
                  if(_loc2_)
                  {
                     addr0065:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc3_))
                           {
                              addr008d:
                              this.moodLabel = _loc1_;
                              if(_loc2_)
                              {
                                 addr0097:
                                 BindingManager.executeBindings(this,"moodLabel",this.moodLabel);
                              }
                           }
                           return _loc1_;
                        }
                     }
                     §§goto(addr008d);
                  }
               }
               §§goto(addr0097);
            }
            §§goto(addr0065);
         }
         §§goto(addr0097);
      }
      
      private function _InfoLayerEnergyMoodComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "layer_happyness_icon";
               if(_loc3_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        addr0076:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0076);
            }
         }
         addr007a:
         return _loc1_;
      }
      
      private function _InfoLayerEnergyMoodComponent_HGroup3_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.verticalAlign = "middle";
               if(!_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_)
                  {
                     addr005b:
                     _loc1_.mxmlContent = [this._InfoLayerEnergyMoodComponent_LocaLabel2_i(),this._InfoLayerEnergyMoodComponent_BriskImageDynaLib2_c()];
                     if(!_loc3_)
                     {
                        _loc1_.id = "energyGroup";
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr0095:
                                 _loc1_.document = this;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§goto(addr00a6);
                                 }
                              }
                              §§goto(addr00b0);
                           }
                        }
                        addr00a6:
                        this.energyGroup = _loc1_;
                        if(!_loc3_)
                        {
                           addr00b0:
                           BindingManager.executeBindings(this,"energyGroup",this.energyGroup);
                        }
                        §§goto(addr00bd);
                     }
                  }
                  §§goto(addr00b0);
               }
               addr00bd:
               return _loc1_;
            }
            §§goto(addr005b);
         }
         §§goto(addr0095);
      }
      
      private function _InfoLayerEnergyMoodComponent_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.maxDisplayedLines = 1;
            if(_loc2_)
            {
               _loc1_.styleName = "infoLabelRight";
               if(!_loc3_)
               {
                  _loc1_.id = "energyLabel";
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0073:
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr007c:
                              this.energyLabel = _loc1_;
                              if(_loc2_ || _loc3_)
                              {
                                 BindingManager.executeBindings(this,"energyLabel",this.energyLabel);
                              }
                           }
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr007c);
                  }
                  addr009b:
                  return _loc1_;
               }
            }
            §§goto(addr007c);
         }
         §§goto(addr0073);
      }
      
      private function _InfoLayerEnergyMoodComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_shopBook";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "shopenergy";
               if(!_loc3_)
               {
                  addr0048:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0054:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0054);
         }
         §§goto(addr0048);
      }
      
      [Bindable(event="propertyChange")]
      public function get energyGroup() : HGroup
      {
         return this._1840699177energyGroup;
      }
      
      public function set energyGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1840699177energyGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1840699177energyGroup = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0078);
      }
      
      [Bindable(event="propertyChange")]
      public function get energyLabel() : LocaLabel
      {
         return this._1836601012energyLabel;
      }
      
      public function set energyLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1836601012energyLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1836601012energyLabel = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr0059:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0068);
            }
            addr0077:
            return;
         }
         §§goto(addr0059);
      }
      
      [Bindable(event="propertyChange")]
      public function get moodGroup() : HGroup
      {
         return this._899936824moodGroup;
      }
      
      public function set moodGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._899936824moodGroup;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._899936824moodGroup = param1;
                  addr0042:
                  if(_loc4_)
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr0070);
               }
               addr0059:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0070:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodGroup",_loc2_,param1));
                  }
               }
               §§goto(addr007f);
            }
            addr007f:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get moodLabel() : LocaLabel
      {
         return this._895838659moodLabel;
      }
      
      public function set moodLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._895838659moodLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._895838659moodLabel = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0059:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0078);
                  }
               }
               §§goto(addr0069);
            }
            addr0078:
            return;
         }
         §§goto(addr0059);
      }
   }
}

