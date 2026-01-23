package net.bigpoint.cityrama.view.miniLayer.ui
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.miniLayer.vo.TutorialRewardMiniLayerVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.common.components.TextValueWithImage_GroupComponent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class TutorialRewardMiniLayer extends MiniLayerWindow
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         _skinParts = {
            "moveArea":false,
            "sparkle":false,
            "closeButton":false,
            "controlBarGroup":false,
            "attentionSign":false,
            "contentGroup":false,
            "titleDisplay":false
         };
      }
      
      private var _97921but:MultistateButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _1963343900headerReward:LocaLabel;
      
      private var _3321844line:BriskImageDynaLib;
      
      private var _273241018mainGroup:HGroup;
      
      private var _2112922897polaroidImage:BriskImageDynaLib;
      
      private var _1690973142rewardLeft:TextValueWithImage_GroupComponent;
      
      private var _886220845rewardRight:TextValueWithImage_GroupComponent;
      
      private var _1170720944tutorialRewardComponent:StickyNoteComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:TutorialRewardMiniLayerVo;
      
      public function TutorialRewardMiniLayer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(_loc1_ || Boolean(this))
            {
               mx_internal::_document = this;
               if(_loc1_)
               {
                  §§goto(addr0041);
               }
            }
            §§goto(addr0073);
         }
         addr0041:
         this.width = 540;
         if(!(_loc2_ && _loc2_))
         {
            this.height = 313;
            if(!_loc2_)
            {
               this.showSparkle = true;
               if(_loc1_)
               {
                  addr0073:
                  this.mxmlContentFactory = new DeferredInstanceFromFunction(this._TutorialRewardMiniLayer_Array1_c);
               }
            }
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || Boolean(param1))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || _loc3_)
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
         if(_loc2_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super.commitProperties();
            if(_loc1_ || _loc1_)
            {
               this.title = ResourceManager.getInstance().getString(String("rcl.miniLayer.tutorialreward"),String("rcl.miniLayer.tutorialreward.title"));
               if(_loc1_)
               {
                  this.flavourText.text = ResourceManager.getInstance().getString(String("rcl.miniLayer.tutorialreward"),String("rcl.miniLayer.tutorialreward.flavour"));
                  if(_loc1_ || Boolean(this))
                  {
                     this.but.label = ResourceManager.getInstance().getString(String("rcl.miniLayer.tutorialreward"),String("rcl.miniLayer.tutorialreward.button"));
                     if(!_loc2_)
                     {
                        addr00b2:
                        this.headerReward.text = ResourceManager.getInstance().getString(String("rcl.miniLayer.tutorialreward"),String("rcl.miniLayer.tutorialreward.output"));
                        if(!_loc2_)
                        {
                           addr00d8:
                           §§push(this.rewardLeft);
                           if(_loc1_)
                           {
                              §§push(§§pop().textLabel);
                              if(_loc1_ || _loc2_)
                              {
                                 §§push("10x");
                                 if(_loc1_)
                                 {
                                    §§pop().text = §§pop();
                                    if(!_loc2_)
                                    {
                                       addr0105:
                                       addr0101:
                                       §§push(this.rewardLeft.visual);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push("xpresso_icon_clean");
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             §§pop().dynaBmpSourceName = §§pop();
                                             if(_loc1_)
                                             {
                                                addr0137:
                                                §§push(this.rewardRight);
                                                if(_loc1_)
                                                {
                                                   §§goto(addr0147);
                                                }
                                                §§goto(addr015a);
                                             }
                                             §§goto(addr0156);
                                          }
                                          §§goto(addr0160);
                                       }
                                       §§goto(addr015d);
                                    }
                                    §§goto(addr0156);
                                 }
                                 addr0147:
                                 §§pop().textLabel.text = "5x";
                                 §§goto(addr0143);
                              }
                              addr0143:
                              if(_loc1_ || Boolean(this))
                              {
                                 addr0160:
                                 this.rewardRight.visual.dynaBmpSourceName = "dd_button_icon";
                                 addr015a:
                                 addr0156:
                                 addr015d:
                              }
                              §§goto(addr0162);
                           }
                           §§goto(addr0105);
                        }
                        §§goto(addr0137);
                     }
                  }
                  §§goto(addr0101);
               }
               §§goto(addr00b2);
            }
            §§goto(addr00d8);
         }
         addr0162:
      }
      
      public function setData(param1:TutorialRewardMiniLayerVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc2_)
               {
                  this._data = param1;
                  if(_loc2_ || Boolean(this))
                  {
                     addr0053:
                     this.invalidateProperties();
                  }
                  §§goto(addr0057);
               }
               §§goto(addr0053);
            }
         }
         addr0057:
      }
      
      private function _TutorialRewardMiniLayer_Array1_c() : Array
      {
         return [this._TutorialRewardMiniLayer_HGroup1_i()];
      }
      
      private function _TutorialRewardMiniLayer_HGroup1_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.paddingTop = -4;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.paddingBottom = 45;
                  if(_loc3_)
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr0070);
               }
               §§goto(addr00eb);
            }
            §§goto(addr00d9);
         }
         addr0059:
         _loc1_.paddingLeft = 14;
         if(_loc3_)
         {
            addr0070:
            _loc1_.horizontalAlign = "left";
            if(_loc3_)
            {
               _loc1_.gap = 0;
               if(!_loc2_)
               {
                  addr0085:
                  _loc1_.mxmlContent = [this._TutorialRewardMiniLayer_Group1_c(),this._TutorialRewardMiniLayer_VGroup1_c()];
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§goto(addr00a3);
                  }
                  §§goto(addr00d0);
               }
               §§goto(addr00a3);
            }
            §§goto(addr0085);
         }
         addr00a3:
         _loc1_.id = "mainGroup";
         if(_loc3_)
         {
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr00d0:
                  _loc1_.document = this;
                  if(_loc3_)
                  {
                     addr00d9:
                     this.mainGroup = _loc1_;
                     if(!(_loc2_ && _loc3_))
                     {
                        addr00eb:
                        BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
                     }
                     §§goto(addr00f8);
                  }
                  §§goto(addr00eb);
               }
               §§goto(addr00f8);
            }
            §§goto(addr00d9);
         }
         addr00f8:
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._TutorialRewardMiniLayer_Group2_c(),this._TutorialRewardMiniLayer_BriskImageDynaLib3_c()];
            if(!_loc3_)
            {
               §§goto(addr0041);
            }
            §§goto(addr0055);
         }
         addr0041:
         if(!_loc1_.document)
         {
            if(_loc2_ || Boolean(this))
            {
               addr0055:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc3_)
         {
            _loc1_.top = 5;
            if(_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc3_)
               {
                  addr0054:
                  _loc1_.mxmlContent = [this._TutorialRewardMiniLayer_BriskImageDynaLib1_c(),this._TutorialRewardMiniLayer_BriskImageDynaLib2_i()];
                  if(_loc2_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr007e:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr007e);
            }
            §§goto(addr0054);
         }
         §§goto(addr007e);
      }
      
      private function _TutorialRewardMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "quest_polaroidframe";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.verticalCenter = 0;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc3_ && _loc2_))
                     {
                        addr007b:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0087:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr008b);
                  }
               }
               §§goto(addr0087);
            }
            addr008b:
            return _loc1_;
         }
         §§goto(addr007b);
      }
      
      private function _TutorialRewardMiniLayer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "quest_polaroid_gift";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.verticalCenter = -1;
                  if(!_loc2_)
                  {
                     _loc1_.horizontalCenter = -1;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0070:
                        _loc1_.id = "polaroidImage";
                        if(!_loc2_)
                        {
                           addr007b:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 §§goto(addr008f);
                              }
                           }
                           §§goto(addr00ab);
                        }
                        addr008f:
                        _loc1_.document = this;
                        if(_loc3_ || Boolean(this))
                        {
                           addr00ab:
                           this.polaroidImage = _loc1_;
                           if(_loc3_ || Boolean(this))
                           {
                              BindingManager.executeBindings(this,"polaroidImage",this.polaroidImage);
                           }
                        }
                        §§goto(addr00ca);
                     }
                     addr00ca:
                     return _loc1_;
                  }
                  §§goto(addr0070);
               }
               §§goto(addr00ab);
            }
            §§goto(addr008f);
         }
         §§goto(addr007b);
      }
      
      private function _TutorialRewardMiniLayer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "postit_tape_top";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.top = 0;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.width = 130;
                     if(!_loc3_)
                     {
                        addr0082:
                        _loc1_.horizontalCenter = -1;
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr0094:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr00a0:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr00a0);
                  }
               }
               addr00a4:
               return _loc1_;
            }
            §§goto(addr0082);
         }
         §§goto(addr0094);
      }
      
      private function _TutorialRewardMiniLayer_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.gap = 0;
            if(!_loc2_)
            {
               _loc1_.horizontalAlign = "left";
               if(_loc3_)
               {
                  _loc1_.verticalAlign = "top";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.mxmlContent = [this._TutorialRewardMiniLayer_Group3_c(),this._TutorialRewardMiniLayer_VGroup3_c()];
                     if(_loc3_ || _loc3_)
                     {
                        addr0086:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0092:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0096);
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr0096);
               }
               §§goto(addr0092);
            }
            addr0096:
            return _loc1_;
         }
         §§goto(addr0086);
      }
      
      private function _TutorialRewardMiniLayer_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.mxmlContent = [this._TutorialRewardMiniLayer_BriskImageDynaLib4_c(),this._TutorialRewardMiniLayer_BriskImageDynaLib5_c(),this._TutorialRewardMiniLayer_HGroup2_c()];
            if(_loc2_ || _loc2_)
            {
               addr0063:
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0063);
      }
      
      private function _TutorialRewardMiniLayer_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "moneylayer_bubble";
               if(_loc2_)
               {
                  §§goto(addr003f);
               }
               §§goto(addr0053);
            }
         }
         addr003f:
         if(!_loc1_.document)
         {
            if(_loc2_ || _loc3_)
            {
               addr0053:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.top = -14;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.left = 10;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.measuredWidth = 0;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.measuredHeight = 0;
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.dynaLibName = "gui_popups_questPopup";
                        addr007c:
                        if(!_loc2_)
                        {
                           addr0094:
                           _loc1_.dynaBmpSourceName = "quest_bubble_icon_trophy";
                           if(_loc3_ || Boolean(this))
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    _loc1_.document = this;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr00b7);
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0094);
            }
         }
         addr00b7:
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.left = 40;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.top = -12;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.horizontalAlign = "left";
                  if(!_loc3_)
                  {
                     _loc1_.gap = 0;
                     if(_loc2_)
                     {
                        addr0073:
                        _loc1_.mxmlContent = [this._TutorialRewardMiniLayer_VGroup2_c()];
                        if(_loc2_)
                        {
                           §§goto(addr0083);
                        }
                     }
                  }
                  §§goto(addr008f);
               }
               addr0083:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr008f:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0073);
      }
      
      private function _TutorialRewardMiniLayer_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.gap = 0;
            if(_loc2_ || _loc2_)
            {
               _loc1_.mxmlContent = [this._TutorialRewardMiniLayer_Group4_c(),this._TutorialRewardMiniLayer_LocaLabel1_i()];
               if(!(_loc3_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr007a:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr007a);
      }
      
      private function _TutorialRewardMiniLayer_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.height = 46;
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr0045:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0045);
      }
      
      private function _TutorialRewardMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.maxWidth = 200;
            if(_loc3_)
            {
               _loc1_.maxHeight = 65;
               if(_loc3_)
               {
                  addr0040:
                  _loc1_.styleName = "miniLayerFlavourText";
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.setStyle("textAlign","center");
                     if(!_loc2_)
                     {
                        addr006f:
                        _loc1_.id = "flavourText";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr0094:
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    addr009d:
                                    this.flavourText = _loc1_;
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       addr00af:
                                       BindingManager.executeBindings(this,"flavourText",this.flavourText);
                                    }
                                    §§goto(addr00bc);
                                 }
                                 §§goto(addr00af);
                              }
                              §§goto(addr00bc);
                           }
                           §§goto(addr009d);
                        }
                        §§goto(addr0094);
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr006f);
               }
               addr00bc:
               return _loc1_;
            }
            §§goto(addr0040);
         }
         §§goto(addr0094);
      }
      
      private function _TutorialRewardMiniLayer_VGroup3_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc3_ || _loc2_)
            {
               _loc1_.paddingLeft = 6;
               if(!_loc2_)
               {
                  _loc1_.paddingTop = -8;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.gap = -14;
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.mxmlContent = [this._TutorialRewardMiniLayer_StickyNoteComponent1_i(),this._TutorialRewardMiniLayer_Group6_c(),this._TutorialRewardMiniLayer_MultistateButton1_i()];
                        addr006e:
                        if(_loc3_ || Boolean(this))
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr00ac:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00b0);
                        }
                        §§goto(addr00ac);
                     }
                  }
                  §§goto(addr00b0);
               }
               §§goto(addr006e);
            }
            addr00b0:
            return _loc1_;
         }
         §§goto(addr00ac);
      }
      
      private function _TutorialRewardMiniLayer_StickyNoteComponent1_i() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc3_)
         {
            _loc1_.width = 274;
            if(_loc3_)
            {
               _loc1_.height = 96;
               if(_loc3_ || Boolean(this))
               {
                  addr003d:
                  _loc1_.tapeLeft = true;
                  if(!_loc2_)
                  {
                     _loc1_.tapeRight = true;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0064:
                        _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._TutorialRewardMiniLayer_Array10_c);
                        if(_loc3_)
                        {
                           addr0079:
                           _loc1_.id = "tutorialRewardComponent";
                           if(_loc3_)
                           {
                              addr0084:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00a4:
                                    _loc1_.document = this;
                                    if(!_loc2_)
                                    {
                                       addr00ad:
                                       this.tutorialRewardComponent = _loc1_;
                                       if(!_loc2_)
                                       {
                                          addr00b7:
                                          BindingManager.executeBindings(this,"tutorialRewardComponent",this.tutorialRewardComponent);
                                       }
                                       §§goto(addr00c4);
                                    }
                                    §§goto(addr00b7);
                                 }
                                 §§goto(addr00c4);
                              }
                              §§goto(addr00ad);
                           }
                           §§goto(addr00a4);
                        }
                        §§goto(addr0084);
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr0064);
               }
               §§goto(addr00c4);
            }
            §§goto(addr003d);
         }
         addr00c4:
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_Array10_c() : Array
      {
         return [this._TutorialRewardMiniLayer_VGroup4_c(),this._TutorialRewardMiniLayer_HGroup3_c()];
      }
      
      private function _TutorialRewardMiniLayer_VGroup4_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc2_)
            {
               _loc1_.paddingTop = -4;
               if(_loc3_)
               {
                  _loc1_.gap = 0;
                  if(!_loc2_)
                  {
                     addr0058:
                     _loc1_.mxmlContent = [this._TutorialRewardMiniLayer_LocaLabel2_i(),this._TutorialRewardMiniLayer_BriskImageDynaLib6_i()];
                     if(!_loc2_)
                     {
                        addr006e:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr006e);
               }
            }
            addr007e:
            return _loc1_;
         }
         §§goto(addr0058);
      }
      
      private function _TutorialRewardMiniLayer_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  addr0032:
                  _loc1_.maxHeight = 20;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.styleName = "postitBlueHeader";
                     if(!_loc3_)
                     {
                        _loc1_.setStyle("textAlign","center");
                        if(_loc2_)
                        {
                           _loc1_.id = "headerReward";
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr0089:
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    _loc1_.document = this;
                                    if(_loc2_)
                                    {
                                       §§goto(addr009e);
                                    }
                                    §§goto(addr00a8);
                                 }
                              }
                           }
                           addr009e:
                           this.headerReward = _loc1_;
                           if(_loc2_)
                           {
                              addr00a8:
                              BindingManager.executeBindings(this,"headerReward",this.headerReward);
                           }
                           §§goto(addr00b5);
                        }
                     }
                     addr00b5:
                     return _loc1_;
                  }
                  §§goto(addr0089);
               }
               §§goto(addr009e);
            }
            §§goto(addr0032);
         }
         §§goto(addr0089);
      }
      
      private function _TutorialRewardMiniLayer_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_)
            {
               _loc1_.dynaLibName = "gui_popups_paperPopup";
               if(!_loc2_)
               {
                  §§goto(addr003d);
               }
               §§goto(addr0093);
            }
            addr003d:
            _loc1_.dynaBmpSourceName = "head_line";
            if(!(_loc2_ && _loc2_))
            {
               addr005d:
               _loc1_.id = "line";
               if(_loc3_ || Boolean(_loc1_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0093:
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr009c:
                           this.line = _loc1_;
                           if(_loc3_)
                           {
                              addr00a6:
                              BindingManager.executeBindings(this,"line",this.line);
                           }
                           §§goto(addr00b3);
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr00b3);
                  }
                  §§goto(addr009c);
               }
            }
            addr00b3:
            return _loc1_;
         }
         §§goto(addr005d);
      }
      
      private function _TutorialRewardMiniLayer_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.paddingLeft = 6;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.paddingTop = 18;
               if(_loc3_)
               {
                  addr0052:
                  _loc1_.gap = 0;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.mxmlContent = [this._TutorialRewardMiniLayer_TextValueWithImage_GroupComponent1_i(),this._TutorialRewardMiniLayer_Group5_c(),this._TutorialRewardMiniLayer_TextValueWithImage_GroupComponent2_i()];
                     §§goto(addr0064);
                  }
               }
               §§goto(addr0094);
            }
            §§goto(addr0052);
         }
         addr0064:
         if(_loc3_ || Boolean(_loc1_))
         {
            addr0094:
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
      
      private function _TutorialRewardMiniLayer_TextValueWithImage_GroupComponent1_i() : TextValueWithImage_GroupComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TextValueWithImage_GroupComponent = new TextValueWithImage_GroupComponent();
         if(_loc3_ || _loc3_)
         {
            _loc1_.id = "rewardLeft";
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     §§goto(addr004e);
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006b);
            }
            addr004e:
            _loc1_.document = this;
            if(!(_loc2_ && Boolean(this)))
            {
               addr006b:
               this.rewardLeft = _loc1_;
               if(_loc3_ || _loc2_)
               {
                  addr007d:
                  BindingManager.executeBindings(this,"rewardLeft",this.rewardLeft);
               }
            }
            §§goto(addr008a);
         }
         addr008a:
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_Group5_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.width = 4;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0050:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0054);
            }
            §§goto(addr0050);
         }
         addr0054:
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_TextValueWithImage_GroupComponent2_i() : TextValueWithImage_GroupComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TextValueWithImage_GroupComponent = new TextValueWithImage_GroupComponent();
         if(_loc3_)
         {
            _loc1_.id = "rewardRight";
            if(!(_loc2_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr0059:
                     _loc1_.document = this;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr006a:
                        this.rewardRight = _loc1_;
                        if(_loc3_)
                        {
                           addr0074:
                           BindingManager.executeBindings(this,"rewardRight",this.rewardRight);
                        }
                        §§goto(addr0081);
                     }
                     §§goto(addr0074);
                  }
                  addr0081:
                  return _loc1_;
               }
            }
            §§goto(addr006a);
         }
         §§goto(addr0059);
      }
      
      private function _TutorialRewardMiniLayer_Group6_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc2_)
         {
            _loc1_.height = 20;
            if(_loc2_ || _loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr0065:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0069);
            }
            §§goto(addr0065);
         }
         addr0069:
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.styleName = "confirm";
            if(_loc3_ || _loc3_)
            {
               _loc1_.showSparkle = true;
               if(!_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc2_)
                  {
                     _loc1_.width = 184;
                     if(!_loc2_)
                     {
                        _loc1_.label = "Button";
                        if(!_loc2_)
                        {
                           _loc1_.id = "but";
                           if(!_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr009e:
                                    _loc1_.document = this;
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr00af:
                                       this.but = _loc1_;
                                       if(_loc3_)
                                       {
                                          addr00b9:
                                          BindingManager.executeBindings(this,"but",this.but);
                                       }
                                    }
                                 }
                                 §§goto(addr00c6);
                              }
                           }
                           §§goto(addr00af);
                        }
                        §§goto(addr00c6);
                     }
                  }
                  §§goto(addr009e);
               }
               addr00c6:
               return _loc1_;
            }
            §§goto(addr00b9);
         }
         §§goto(addr00af);
      }
      
      [Bindable(event="propertyChange")]
      public function get but() : MultistateButton
      {
         return this._97921but;
      }
      
      public function set but(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._97921but;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._97921but = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"but",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
               }
               §§goto(addr0071);
            }
         }
         addr0080:
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._800887486flavourText;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._800887486flavourText = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr006d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0085:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0094);
               }
               §§goto(addr006d);
            }
            addr0094:
            return;
         }
         §§goto(addr0085);
      }
      
      [Bindable(event="propertyChange")]
      public function get headerReward() : LocaLabel
      {
         return this._1963343900headerReward;
      }
      
      public function set headerReward(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1963343900headerReward;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._1963343900headerReward = param1;
                  addr0040:
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§goto(addr0062);
                  }
                  §§goto(addr0072);
               }
               addr0062:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0072:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerReward",_loc2_,param1));
                  }
               }
               §§goto(addr0081);
            }
            addr0081:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get line() : BriskImageDynaLib
      {
         return this._3321844line;
      }
      
      public function set line(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._3321844line;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._3321844line = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"line",_loc2_,param1));
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
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGroup() : HGroup
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._273241018mainGroup;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._273241018mainGroup = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0068:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr007f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008e);
               }
               §§goto(addr007f);
            }
            addr008e:
            return;
         }
         §§goto(addr0068);
      }
      
      [Bindable(event="propertyChange")]
      public function get polaroidImage() : BriskImageDynaLib
      {
         return this._2112922897polaroidImage;
      }
      
      public function set polaroidImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2112922897polaroidImage;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._2112922897polaroidImage = param1;
                  addr0047:
                  if(_loc4_)
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr0076);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr0076:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"polaroidImage",_loc2_,param1));
                  }
               }
               §§goto(addr0085);
            }
            addr0085:
            return;
         }
         §§goto(addr0047);
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardLeft() : TextValueWithImage_GroupComponent
      {
         return this._1690973142rewardLeft;
      }
      
      public function set rewardLeft(param1:TextValueWithImage_GroupComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1690973142rewardLeft;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1690973142rewardLeft = param1;
                  addr0038:
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr0066);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0066:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardLeft",_loc2_,param1));
                  }
               }
               §§goto(addr0075);
            }
            addr0075:
            return;
         }
         §§goto(addr0038);
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardRight() : TextValueWithImage_GroupComponent
      {
         return this._886220845rewardRight;
      }
      
      public function set rewardRight(param1:TextValueWithImage_GroupComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._886220845rewardRight;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._886220845rewardRight = param1;
                  addr0040:
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardRight",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get tutorialRewardComponent() : StickyNoteComponent
      {
         return this._1170720944tutorialRewardComponent;
      }
      
      public function set tutorialRewardComponent(param1:StickyNoteComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1170720944tutorialRewardComponent;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1170720944tutorialRewardComponent = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tutorialRewardComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr006b);
            }
         }
         addr007a:
      }
   }
}

