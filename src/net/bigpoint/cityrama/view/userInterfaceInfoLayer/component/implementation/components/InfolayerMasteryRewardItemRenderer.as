package net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.mastery.MasteryBonusVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class InfolayerMasteryRewardItemRenderer extends ItemRenderer
   {
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var _501248986typeLabel:LocaLabel;
      
      private var _2025208835valueLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:MasteryBonusVo;
      
      private var _dirty:Boolean;
      
      public function InfolayerMasteryRewardItemRenderer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(!(_loc2_ && _loc1_))
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.mxmlContent = [this._InfolayerMasteryRewardItemRenderer_HGroup1_c()];
               }
            }
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || _loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr0043);
                  }
               }
               this.__moduleFactoryInitialized = true;
               §§goto(addr004f);
            }
            addr0043:
            return;
         }
         addr004f:
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
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(!RandomUtilities.isEqual(this._data,param1))
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._dirty = true;
                  if(_loc3_ || _loc3_)
                  {
                     this._data = param1 as MasteryBonusVo;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr007a:
                        invalidateProperties();
                        if(_loc3_)
                        {
                           addr0084:
                           super.data = param1;
                        }
                        §§goto(addr0088);
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0088);
            }
            §§goto(addr007a);
         }
         addr0088:
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:* = 0;
         var _loc2_:* = null;
         if(_loc3_ || Boolean(this))
         {
            if(this._dirty)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._dirty = false;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§push(this.typeLabel);
                     §§push(LocaUtils);
                     §§push("rcl.booklayer.residential");
                     §§push("rcl.booklayer.residential.guiinfolayer.mastery.reward.label.");
                     if(_loc3_)
                     {
                        §§push(§§pop() + this._data.locaId);
                     }
                     §§pop().text = §§pop().getString(§§pop(),§§pop());
                     if(_loc3_ || Boolean(_loc2_))
                     {
                        §§push(int(Math.ceil(this._data.value * 100)));
                        if(_loc3_)
                        {
                           _loc1_ = §§pop();
                           if(!_loc4_)
                           {
                              §§push(_loc1_);
                              if(_loc3_)
                              {
                                 §§push(0);
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          §§push("+ ");
                                          if(_loc3_ || Boolean(this))
                                          {
                                             _loc2_ = §§pop();
                                             if(!_loc4_)
                                             {
                                                addr00eb:
                                                §§push(int(Math.abs(_loc1_)));
                                                if(_loc3_)
                                                {
                                                   §§goto(addr00f8);
                                                }
                                                §§goto(addr0107);
                                             }
                                             §§goto(addr0183);
                                          }
                                          §§goto(addr0149);
                                       }
                                       §§goto(addr00eb);
                                    }
                                    else
                                    {
                                       §§push("- ");
                                       if(!_loc4_)
                                       {
                                          _loc2_ = §§pop();
                                          if(!_loc4_)
                                          {
                                             §§goto(addr00eb);
                                          }
                                          §§goto(addr0177);
                                       }
                                    }
                                    §§goto(addr0149);
                                 }
                                 §§goto(addr0109);
                              }
                              addr00f8:
                              _loc1_ = §§pop();
                              if(_loc3_ || Boolean(_loc2_))
                              {
                                 addr0107:
                                 addr0109:
                                 if(_loc1_ < 10)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§push(_loc2_);
                                       if(!(_loc4_ && Boolean(_loc2_)))
                                       {
                                          §§push(" ");
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc4_ && Boolean(_loc2_)))
                                             {
                                                addr0149:
                                                _loc2_ = §§pop();
                                                if(!_loc4_)
                                                {
                                                   addr015d:
                                                   addr0150:
                                                   §§push(_loc2_);
                                                   if(_loc3_)
                                                   {
                                                      addr015c:
                                                      addr015b:
                                                      §§push(§§pop() + (_loc1_ + "%"));
                                                   }
                                                   _loc2_ = §§pop();
                                                   if(_loc3_ || Boolean(_loc1_))
                                                   {
                                                      addr0177:
                                                      this.valueLabel.text = _loc2_;
                                                      if(_loc3_)
                                                      {
                                                         addr0183:
                                                         this.icon.dynaBmpSourceName = this._data.gfxId;
                                                         if(_loc3_)
                                                         {
                                                            addr0195:
                                                            super.commitProperties();
                                                         }
                                                      }
                                                      §§goto(addr019a);
                                                   }
                                                }
                                                §§goto(addr0195);
                                             }
                                             §§goto(addr015c);
                                          }
                                          §§goto(addr015b);
                                       }
                                       §§goto(addr015d);
                                    }
                                    §§goto(addr0195);
                                 }
                                 §§goto(addr0150);
                              }
                              addr019a:
                              return;
                           }
                           §§goto(addr0183);
                        }
                        §§goto(addr0107);
                     }
                     §§goto(addr0150);
                  }
                  §§goto(addr00eb);
               }
               §§goto(addr0183);
            }
         }
         §§goto(addr0195);
      }
      
      private function _InfolayerMasteryRewardItemRenderer_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._InfolayerMasteryRewardItemRenderer_LocaLabel1_i(),this._InfolayerMasteryRewardItemRenderer_LocaLabel2_i(),this._InfolayerMasteryRewardItemRenderer_BriskImageDynaLib1_i()];
                  addr004f:
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr0093:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0093);
            }
         }
         §§goto(addr004f);
      }
      
      private function _InfolayerMasteryRewardItemRenderer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.minWidth = 130;
            if(_loc2_)
            {
               _loc1_.maxWidth = 130;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr0047:
                  _loc1_.maxDisplayedLines = 2;
                  if(!_loc3_)
                  {
                     _loc1_.styleName = "infoLabelLeft";
                     if(_loc2_)
                     {
                        addr0069:
                        _loc1_.id = "typeLabel";
                        if(_loc2_ || _loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr009d:
                                 _loc1_.document = this;
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    §§goto(addr00ae);
                                 }
                                 §§goto(addr00b8);
                              }
                           }
                           addr00ae:
                           this.typeLabel = _loc1_;
                           if(!_loc3_)
                           {
                              addr00b8:
                              BindingManager.executeBindings(this,"typeLabel",this.typeLabel);
                           }
                           §§goto(addr00c5);
                        }
                        §§goto(addr00b8);
                     }
                     addr00c5:
                     return _loc1_;
                  }
                  §§goto(addr0069);
               }
               §§goto(addr00b8);
            }
            §§goto(addr009d);
         }
         §§goto(addr0047);
      }
      
      private function _InfolayerMasteryRewardItemRenderer_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = null;
         _loc1_ = new LocaLabel();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.width = 50;
            if(!_loc2_)
            {
               addr0037:
               _loc1_.maxWidth = 50;
               if(_loc3_)
               {
                  _loc1_.maxDisplayedLines = 1;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.styleName = "infoLabelRight";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.id = "valueLabel";
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 §§goto(addr009d);
                              }
                              §§goto(addr00b8);
                           }
                           §§goto(addr00a6);
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr00a6);
                  }
                  §§goto(addr00b8);
               }
            }
            addr009d:
            _loc1_.document = this;
            if(!_loc2_)
            {
               addr00a6:
               this.valueLabel = _loc1_;
               if(_loc3_ || _loc3_)
               {
                  addr00b8:
                  BindingManager.executeBindings(this,"valueLabel",this.valueLabel);
               }
            }
            return _loc1_;
         }
         §§goto(addr0037);
      }
      
      private function _InfolayerMasteryRewardItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(!_loc3_)
            {
               _loc1_.id = "icon";
               if(_loc2_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        §§goto(addr005d);
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr007a);
               }
               addr005d:
               _loc1_.document = this;
               if(!(_loc3_ && _loc3_))
               {
                  addr007a:
                  this.icon = _loc1_;
                  if(_loc2_ || Boolean(this))
                  {
                     addr008c:
                     BindingManager.executeBindings(this,"icon",this.icon);
                  }
               }
               §§goto(addr0099);
            }
            addr0099:
            return _loc1_;
         }
         §§goto(addr007a);
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : BriskImageDynaLib
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._3226745icon;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._3226745icon = param1;
                  addr0041:
                  if(!_loc4_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0058);
            }
            addr007f:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get typeLabel() : LocaLabel
      {
         return this._501248986typeLabel;
      }
      
      public function set typeLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._501248986typeLabel;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._501248986typeLabel = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"typeLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
               }
               §§goto(addr006d);
            }
         }
         addr007c:
      }
      
      [Bindable(event="propertyChange")]
      public function get valueLabel() : LocaLabel
      {
         return this._2025208835valueLabel;
      }
      
      public function set valueLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2025208835valueLabel;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._2025208835valueLabel = param1;
                  addr0048:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"valueLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0076);
               }
            }
            addr0085:
            return;
         }
         §§goto(addr0048);
      }
   }
}

