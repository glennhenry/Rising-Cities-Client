package net.bigpoint.cityrama.view.miniLayer.components
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
   
   public class MasteryRewardMinilayerItemRenderer extends ItemRenderer
   {
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var _501248986typeLabel:LocaLabel;
      
      private var _2025208835valueLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:MasteryBonusVo;
      
      private var _dirty:Boolean;
      
      public function MasteryRewardMinilayerItemRenderer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               mx_internal::_document = this;
               addr002d:
               if(_loc1_ || _loc1_)
               {
                  this.height = 20;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this.width = 340;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        this.maxWidth = 340;
                        if(!_loc2_)
                        {
                           addr008c:
                           this.mxmlContent = [this._MasteryRewardMinilayerItemRenderer_HGroup1_c()];
                        }
                        §§goto(addr0097);
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr0097);
               }
               §§goto(addr008c);
            }
            addr0097:
            return;
         }
         §§goto(addr002d);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               §§goto(addr0036);
            }
            §§goto(addr004a);
         }
         addr0036:
         if(this.__moduleFactoryInitialized)
         {
            if(_loc3_)
            {
               return;
            }
         }
         else
         {
            addr004a:
            this.__moduleFactoryInitialized = true;
         }
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
      
      override public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            if(!RandomUtilities.isEqual(this._data,param1))
            {
               if(_loc2_ || Boolean(this))
               {
                  this._dirty = true;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0067:
                     this._data = param1 as MasteryBonusVo;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr007d:
                        invalidateProperties();
                        if(_loc2_)
                        {
                           super.data = param1;
                        }
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr007d);
               }
               addr008b:
               return;
            }
            §§goto(addr007d);
         }
         §§goto(addr0067);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:* = 0;
         var _loc2_:* = null;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(this._dirty)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  addr003a:
                  this._dirty = false;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     §§push(this.typeLabel);
                     §§push(LocaUtils);
                     §§push("rcl.booklayer.residential");
                     §§push("rcl.booklayer.residential.guiinfolayer.mastery.reward.label.");
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§push(§§pop() + this._data.locaId);
                     }
                     §§pop().text = §§pop().getString(§§pop(),§§pop());
                     if(!(_loc3_ && Boolean(_loc2_)))
                     {
                        §§push(int(Math.ceil(this._data.value * 100)));
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_ = §§pop();
                           if(_loc4_)
                           {
                              §§push(_loc1_);
                              if(_loc4_ || Boolean(_loc2_))
                              {
                                 §§push(0);
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          §§push("+ ");
                                          if(!_loc3_)
                                          {
                                             _loc2_ = §§pop();
                                             if(!_loc3_)
                                             {
                                                §§goto(addr010a);
                                             }
                                             §§goto(addr0193);
                                          }
                                          else
                                          {
                                             addr00fb:
                                             _loc2_ = §§pop();
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§goto(addr010a);
                                             }
                                          }
                                          §§goto(addr0186);
                                       }
                                       addr010a:
                                       §§push(int(Math.abs(_loc1_)));
                                       if(!(_loc3_ && Boolean(_loc1_)))
                                       {
                                          addr011f:
                                          _loc1_ = §§pop();
                                          if(!(_loc3_ && Boolean(_loc2_)))
                                          {
                                             §§goto(addr012e);
                                          }
                                          §§goto(addr0186);
                                       }
                                       addr012e:
                                       §§goto(addr0130);
                                    }
                                    else
                                    {
                                       §§push("- ");
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§goto(addr00fb);
                                       }
                                    }
                                    §§goto(addr015f);
                                 }
                                 addr0130:
                                 if(_loc1_ < 10)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§push(_loc2_);
                                       if(_loc4_)
                                       {
                                          §§push(" ");
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc3_ && Boolean(_loc2_)))
                                             {
                                                addr015f:
                                                _loc2_ = §§pop();
                                                if(_loc4_)
                                                {
                                                   §§goto(addr0173);
                                                }
                                                §§goto(addr0193);
                                             }
                                             §§goto(addr0172);
                                          }
                                          §§goto(addr0171);
                                       }
                                       addr0173:
                                       §§goto(addr0166);
                                    }
                                 }
                                 addr0166:
                                 §§push(_loc2_);
                                 if(!_loc3_)
                                 {
                                    addr0172:
                                    addr0171:
                                    §§push(§§pop() + (_loc1_ + "%"));
                                 }
                                 _loc2_ = §§pop();
                                 if(!_loc3_)
                                 {
                                    addr0186:
                                    this.valueLabel.text = _loc2_;
                                    if(_loc4_)
                                    {
                                       addr0193:
                                       this.icon.dynaBmpSourceName = this._data.gfxId;
                                       if(!(_loc3_ && Boolean(_loc2_)))
                                       {
                                          addr01ad:
                                          super.commitProperties();
                                       }
                                       §§goto(addr01b2);
                                    }
                                    §§goto(addr01ad);
                                 }
                                 addr01b2:
                                 return;
                              }
                              §§goto(addr011f);
                           }
                           §§goto(addr0186);
                        }
                        §§goto(addr011f);
                     }
                     §§goto(addr0186);
                  }
                  §§goto(addr010a);
               }
            }
            §§goto(addr01ad);
         }
         §§goto(addr003a);
      }
      
      private function _MasteryRewardMinilayerItemRenderer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.mxmlContent = [this._MasteryRewardMinilayerItemRenderer_LocaLabel1_i(),this._MasteryRewardMinilayerItemRenderer_LocaLabel2_i(),this._MasteryRewardMinilayerItemRenderer_BriskImageDynaLib1_i()];
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr009d:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr009d);
            }
            addr00a1:
            return _loc1_;
         }
         §§goto(addr009d);
      }
      
      private function _MasteryRewardMinilayerItemRenderer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.maxWidth = 230;
               if(_loc2_)
               {
                  _loc1_.maxDisplayedLines = 1;
                  if(_loc2_)
                  {
                     _loc1_.styleName = "infoLabelLeft";
                     §§goto(addr0048);
                  }
                  §§goto(addr00b1);
               }
               addr0048:
               if(!_loc3_)
               {
                  _loc1_.setStyle("fontSize",14);
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.id = "typeLabel";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 §§goto(addr00a7);
                              }
                           }
                           §§goto(addr00b1);
                        }
                     }
                  }
                  addr00a7:
                  this.typeLabel = _loc1_;
                  if(_loc2_)
                  {
                     addr00b1:
                     BindingManager.executeBindings(this,"typeLabel",this.typeLabel);
                  }
               }
               §§goto(addr00be);
            }
            addr00be:
            return _loc1_;
         }
         §§goto(addr0048);
      }
      
      private function _MasteryRewardMinilayerItemRenderer_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.width = 50;
            if(_loc3_ || _loc3_)
            {
               §§goto(addr003b);
            }
            §§goto(addr0080);
         }
         addr003b:
         _loc1_.maxWidth = 50;
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.maxDisplayedLines = 1;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.styleName = "infoLabelRight";
               if(!(_loc2_ && _loc3_))
               {
                  addr0080:
                  _loc1_.setStyle("fontSize",14);
                  if(_loc3_)
                  {
                     addr008e:
                     _loc1_.id = "valueLabel";
                     if(!_loc2_)
                     {
                        §§goto(addr0099);
                     }
                  }
                  §§goto(addr00cd);
               }
               §§goto(addr008e);
            }
            addr0099:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  _loc1_.document = this;
                  if(!_loc2_)
                  {
                     §§goto(addr00bb);
                  }
               }
               §§goto(addr00cd);
            }
            addr00bb:
            this.valueLabel = _loc1_;
            if(_loc3_ || _loc2_)
            {
               addr00cd:
               BindingManager.executeBindings(this,"valueLabel",this.valueLabel);
            }
            §§goto(addr00da);
         }
         addr00da:
         return _loc1_;
      }
      
      private function _MasteryRewardMinilayerItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(!_loc2_)
            {
               _loc1_.id = "icon";
               if(_loc3_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        addr0076:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr007f:
                           this.icon = _loc1_;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              BindingManager.executeBindings(this,"icon",this.icon);
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr007f);
            }
            §§goto(addr0076);
         }
         §§goto(addr007f);
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
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._3226745icon = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
                  §§goto(addr0066);
               }
            }
         }
         addr0075:
      }
      
      [Bindable(event="propertyChange")]
      public function get typeLabel() : LocaLabel
      {
         return this._501248986typeLabel;
      }
      
      public function set typeLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._501248986typeLabel;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._501248986typeLabel = param1;
                  if(!_loc3_)
                  {
                     addr0062:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"typeLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0071);
            }
            addr0080:
            return;
         }
         §§goto(addr0062);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._2025208835valueLabel = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"valueLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr0069);
               }
            }
         }
         addr0078:
      }
   }
}

