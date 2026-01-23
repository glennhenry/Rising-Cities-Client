package net.bigpoint.cityrama.view.mastery.components
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.ItemClickEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.mastery.MasteryBonusTraitGroupVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class MasteryTraitItemRenderer extends ItemRenderer
   {
      
      public static const TRAIT_SELECTED:String = "TRAIT_SELECTED";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         TRAIT_SELECTED = "TRAIT_SELECTED";
      }
      
      private var _1402774487chooseButton:MultistateButton;
      
      private var _778749455flavour:LocaLabel;
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var _3575610type:LocaLabel;
      
      private var _2025208835valueLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:MasteryBonusTraitGroupVo;
      
      private var _dataDirty:Boolean;
      
      public function MasteryTraitItemRenderer()
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
               if(!(_loc2_ && Boolean(this)))
               {
                  addr003f:
                  this.width = 200;
                  if(!_loc2_)
                  {
                     this.maxWidth = 200;
                     if(!(_loc2_ && _loc2_))
                     {
                        this.height = 280;
                        if(_loc1_ || _loc1_)
                        {
                           addr007b:
                           this.maxHeight = 280;
                           if(_loc1_ || Boolean(this))
                           {
                              this.autoDrawBackground = false;
                              if(_loc1_ || _loc2_)
                              {
                                 this.mxmlContent = [this._MasteryTraitItemRenderer_VGroup1_c()];
                                 if(_loc1_)
                                 {
                                    addr00bb:
                                    this.addEventListener("creationComplete",this.___MasteryTraitItemRenderer_ItemRenderer1_creationComplete);
                                 }
                              }
                              §§goto(addr00c7);
                           }
                        }
                        §§goto(addr00bb);
                     }
                     addr00c7:
                     return;
                  }
               }
               §§goto(addr007b);
            }
            §§goto(addr003f);
         }
         §§goto(addr00bb);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && Boolean(param1)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && _loc2_))
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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.chooseButton.label = LocaUtils.getString("rcl.booklayer.masterycomplete","rcl.booklayer.masterycomplete.button.capital");
         }
      }
      
      private function choseClickHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            dispatchEvent(new ItemClickEvent(TRAIT_SELECTED,true,false,null,itemIndex));
         }
      }
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            super.data = param1;
            if(_loc3_)
            {
               if(!RandomUtilities.isEqual(param1,this._data))
               {
                  if(!_loc2_)
                  {
                     this._data = param1 as MasteryBonusTraitGroupVo;
                     if(!_loc2_)
                     {
                        addr0061:
                        this._dataDirty = true;
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0073:
                           invalidateProperties();
                        }
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr0073);
               }
               addr0078:
               return;
            }
            §§goto(addr0061);
         }
         §§goto(addr0073);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:* = null;
         var _loc2_:* = 0;
         var _loc3_:* = null;
         if(!(_loc4_ && Boolean(this)))
         {
            super.commitProperties();
            if(_loc5_)
            {
               §§goto(addr0035);
            }
            §§goto(addr0187);
         }
         addr0035:
         if(this._dataDirty)
         {
            if(!_loc4_)
            {
               this._dataDirty = false;
               if(_loc5_)
               {
                  this.icon.dynaBmpSourceName = this._data.gfxId;
                  if(!_loc4_)
                  {
                     §§push(this._data.locaId);
                     if(!_loc4_)
                     {
                        §§push(§§pop());
                        if(_loc5_)
                        {
                           addr0075:
                           _loc1_ = §§pop();
                           if(_loc5_)
                           {
                              §§push(this.type);
                              §§push(LocaUtils);
                              §§push("rcl.booklayer.masterycomplete");
                              §§push("rcl.booklayer.masterycomplete.name.");
                              if(_loc5_)
                              {
                                 §§push(§§pop() + _loc1_);
                              }
                              §§pop().text = §§pop().getString(§§pop(),§§pop());
                              if(!(_loc4_ && Boolean(_loc3_)))
                              {
                                 §§push(this.flavour);
                                 §§push(LocaUtils);
                                 §§push("rcl.booklayer.masterycomplete");
                                 §§push("rcl.booklayer.masterycomplete.flavour.");
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() + _loc1_);
                                 }
                                 §§pop().text = §§pop().getString(§§pop(),§§pop());
                                 if(_loc5_ || Boolean(_loc1_))
                                 {
                                    addr00cb:
                                    §§push(int(Math.ceil(this._data.value * 100)));
                                    if(_loc5_ || Boolean(this))
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc5_ || Boolean(_loc3_))
                                       {
                                          §§push(_loc2_);
                                          if(!_loc4_)
                                          {
                                             addr010c:
                                             §§push(0);
                                             if(!(_loc4_ && Boolean(_loc3_)))
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(!(_loc4_ && Boolean(_loc1_)))
                                                   {
                                                      §§push("+ ");
                                                      if(!(_loc4_ && Boolean(_loc2_)))
                                                      {
                                                         _loc3_ = §§pop();
                                                         if(!(_loc4_ && Boolean(_loc1_)))
                                                         {
                                                            addr016a:
                                                            §§push(int(Math.abs(_loc2_)));
                                                            if(!_loc4_)
                                                            {
                                                               addr0178:
                                                               _loc2_ = §§pop();
                                                               if(!(_loc4_ && Boolean(_loc1_)))
                                                               {
                                                                  addr0188:
                                                                  addr018a:
                                                                  addr0187:
                                                                  if(_loc2_ < 10)
                                                                  {
                                                                     if(_loc5_ || Boolean(this))
                                                                     {
                                                                        addr019c:
                                                                        §§push(_loc3_);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(" ");
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc5_ || Boolean(_loc3_))
                                                                              {
                                                                                 addr01bb:
                                                                                 _loc3_ = §§pop();
                                                                                 if(_loc5_ || Boolean(this))
                                                                                 {
                                                                                    addr01ef:
                                                                                    addr01d9:
                                                                                    §§push(_loc3_);
                                                                                    if(!(_loc4_ && Boolean(_loc2_)))
                                                                                    {
                                                                                       addr01ee:
                                                                                       addr01ed:
                                                                                       §§push(§§pop() + (_loc2_ + "%"));
                                                                                    }
                                                                                    _loc3_ = §§pop();
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       this.valueLabel.text = _loc3_;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr01fd);
                                                                              }
                                                                              §§goto(addr01ee);
                                                                           }
                                                                           §§goto(addr01ed);
                                                                        }
                                                                        §§goto(addr01ef);
                                                                     }
                                                                     §§goto(addr01fd);
                                                                  }
                                                                  §§goto(addr01d9);
                                                               }
                                                               §§goto(addr019c);
                                                            }
                                                            §§goto(addr0188);
                                                         }
                                                         §§goto(addr01d9);
                                                      }
                                                      §§goto(addr01bb);
                                                   }
                                                   §§goto(addr016a);
                                                }
                                                else
                                                {
                                                   §§push("- ");
                                                   if(!(_loc4_ && Boolean(_loc1_)))
                                                   {
                                                      _loc3_ = §§pop();
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr016a);
                                                      }
                                                      §§goto(addr019c);
                                                   }
                                                }
                                                §§goto(addr01ee);
                                             }
                                             §§goto(addr018a);
                                          }
                                          §§goto(addr0178);
                                       }
                                       §§goto(addr019c);
                                    }
                                    §§goto(addr010c);
                                 }
                                 §§goto(addr016a);
                              }
                              §§goto(addr00cb);
                           }
                           §§goto(addr019c);
                        }
                        §§goto(addr01ef);
                     }
                     §§goto(addr0075);
                  }
               }
               §§goto(addr00cb);
            }
            §§goto(addr0187);
         }
         addr01fd:
      }
      
      private function _MasteryTraitItemRenderer_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.gap = 0;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._MasteryTraitItemRenderer_Group1_c(),this._MasteryTraitItemRenderer_MultistateButton1_i()];
                     if(!_loc3_)
                     {
                        addr0083:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr008f:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0083);
            }
            §§goto(addr008f);
         }
         §§goto(addr0083);
      }
      
      private function _MasteryTraitItemRenderer_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               §§goto(addr004b);
            }
            §§goto(addr0075);
         }
         addr004b:
         _loc1_.mxmlContent = [this._MasteryTraitItemRenderer_BriskImageDynaLib1_c(),this._MasteryTraitItemRenderer_VGroup2_c()];
         if(!_loc2_)
         {
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr0075:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _MasteryTraitItemRenderer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_masterySelectionPopup";
            if(!_loc2_)
            {
               §§goto(addr0038);
            }
            §§goto(addr0044);
         }
         addr0038:
         _loc1_.dynaBmpSourceName = "mastery_trait_background";
         if(!_loc2_)
         {
            addr0044:
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
      
      private function _MasteryTraitItemRenderer_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.left = 5;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.gap = 0;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._MasteryTraitItemRenderer_HGroup1_c(),this._MasteryTraitItemRenderer_VGroup3_c(),this._MasteryTraitItemRenderer_VGroup4_c(),this._MasteryTraitItemRenderer_VGroup5_c()];
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0092:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr009e:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0092);
            }
         }
         §§goto(addr009e);
      }
      
      private function _MasteryTraitItemRenderer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.height = 166;
               addr003a:
               if(!_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.verticalAlign = "middle";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.mxmlContent = [this._MasteryTraitItemRenderer_BriskImageDynaLib2_i()];
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr009b);
                        }
                     }
                  }
               }
               §§goto(addr00a7);
            }
            addr009b:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr00a7:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr003a);
      }
      
      private function _MasteryTraitItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_masterySelectionPopup";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.id = "icon";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0066:
                        _loc1_.document = this;
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0077:
                           this.icon = _loc1_;
                           if(_loc3_)
                           {
                              BindingManager.executeBindings(this,"icon",this.icon);
                           }
                        }
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0066);
            }
            addr008e:
            return _loc1_;
         }
         §§goto(addr0066);
      }
      
      private function _MasteryTraitItemRenderer_VGroup3_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.height = 28;
            if(_loc3_)
            {
               §§goto(addr0034);
            }
            §§goto(addr005b);
         }
         addr0034:
         _loc1_.verticalAlign = "middle";
         if(!_loc2_)
         {
            _loc1_.mxmlContent = [this._MasteryTraitItemRenderer_LocaLabel1_i()];
            if(_loc3_)
            {
               addr005b:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr006f:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0073);
            }
            §§goto(addr006f);
         }
         addr0073:
         return _loc1_;
      }
      
      private function _MasteryTraitItemRenderer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc3_)
         {
            _loc1_.width = 180;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.maxWidth = 180;
               if(_loc2_)
               {
                  _loc1_.styleName = "elevenWhiteCenter";
                  if(_loc2_ || _loc3_)
                  {
                     addr0064:
                     _loc1_.id = "type";
                     if(_loc2_ || _loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              §§goto(addr0083);
                           }
                           §§goto(addr00b1);
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr00b1);
                  }
                  addr0083:
                  _loc1_.document = this;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr00a0:
                     this.type = _loc1_;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr00b1:
                        BindingManager.executeBindings(this,"type",this.type);
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0064);
            }
            §§goto(addr00a0);
         }
         §§goto(addr00b1);
      }
      
      private function _MasteryTraitItemRenderer_VGroup4_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.height = 42;
            if(_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._MasteryTraitItemRenderer_LocaLabel2_i()];
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr006f:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr006f);
      }
      
      private function _MasteryTraitItemRenderer_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc3_)
         {
            _loc1_.width = 180;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.maxWidth = 180;
               if(_loc2_)
               {
                  _loc1_.styleName = "improvementStoreDescription";
                  if(!_loc3_)
                  {
                     _loc1_.id = "flavour";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr0089:
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 §§goto(addr009a);
                              }
                              §§goto(addr00a4);
                           }
                        }
                     }
                     addr009a:
                     this.flavour = _loc1_;
                     if(_loc2_)
                     {
                        addr00a4:
                        BindingManager.executeBindings(this,"flavour",this.flavour);
                     }
                     return _loc1_;
                  }
                  §§goto(addr00a4);
               }
               §§goto(addr0089);
            }
            §§goto(addr00a4);
         }
         §§goto(addr0089);
      }
      
      private function _MasteryTraitItemRenderer_VGroup5_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.height = 35;
            if(_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr005c);
               }
               §§goto(addr0074);
            }
         }
         addr005c:
         _loc1_.mxmlContent = [this._MasteryTraitItemRenderer_LocaLabel3_i()];
         if(_loc2_ || Boolean(this))
         {
            addr0074:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _MasteryTraitItemRenderer_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.width = 180;
            if(_loc3_)
            {
               _loc1_.maxWidth = 180;
               if(!_loc2_)
               {
                  _loc1_.styleName = "masteryTraitValue";
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.id = "valueLabel";
                     if(!(_loc2_ && _loc2_))
                     {
                        addr007f:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr008b:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 §§goto(addr0094);
                              }
                              §§goto(addr009e);
                           }
                        }
                     }
                  }
                  addr0094:
                  this.valueLabel = _loc1_;
                  if(_loc3_)
                  {
                     addr009e:
                     BindingManager.executeBindings(this,"valueLabel",this.valueLabel);
                  }
                  return _loc1_;
               }
               §§goto(addr008b);
            }
         }
         §§goto(addr007f);
      }
      
      private function _MasteryTraitItemRenderer_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_)
         {
            _loc1_.label = "DEV: CHOOSE";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.width = 178;
               if(!_loc3_)
               {
                  _loc1_.addEventListener("click",this.__chooseButton_click);
                  if(_loc2_ || _loc2_)
                  {
                     addr0065:
                     _loc1_.id = "chooseButton";
                     if(_loc2_)
                     {
                        addr0070:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr00a0:
                                 this.chooseButton = _loc1_;
                                 if(_loc2_ || _loc3_)
                                 {
                                    BindingManager.executeBindings(this,"chooseButton",this.chooseButton);
                                 }
                              }
                              return _loc1_;
                           }
                        }
                     }
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr0065);
            }
            §§goto(addr0070);
         }
         §§goto(addr00a0);
      }
      
      public function __chooseButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.choseClickHandler(param1);
         }
      }
      
      public function ___MasteryTraitItemRenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get chooseButton() : MultistateButton
      {
         return this._1402774487chooseButton;
      }
      
      public function set chooseButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1402774487chooseButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1402774487chooseButton = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chooseButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0056);
            }
         }
         addr0075:
      }
      
      [Bindable(event="propertyChange")]
      public function get flavour() : LocaLabel
      {
         return this._778749455flavour;
      }
      
      public function set flavour(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._778749455flavour;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._778749455flavour = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr006f);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavour",_loc2_,param1));
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
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._3226745icon = param1;
                  addr003f:
                  if(_loc4_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0055);
            }
            addr007c:
            return;
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get type() : LocaLabel
      {
         return this._3575610type;
      }
      
      public function set type(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3575610type;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr004b:
                  this._3575610type = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"type",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr004b);
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
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._2025208835valueLabel = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr0068);
                  }
                  §§goto(addr0078);
               }
               addr0068:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0078:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"valueLabel",_loc2_,param1));
                  }
               }
               §§goto(addr0087);
            }
         }
         addr0087:
      }
   }
}

