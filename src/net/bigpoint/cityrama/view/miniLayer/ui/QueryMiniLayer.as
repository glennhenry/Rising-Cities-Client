package net.bigpoint.cityrama.view.miniLayer.ui
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.miniLayer.vo.QueryMiniLayerVo;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class QueryMiniLayer extends MiniLayerWindow
   {
      
      public static const CONFIRM_CLICKED:String = "CONFIRM_CLICKED";
      
      public static const DENY_CLICKED:String = "DENY_CLICKED";
      
      public static const ACCEPT_CLICKED:String = "ACCEPT_CLICKED";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         CONFIRM_CLICKED = "CONFIRM_CLICKED";
         if(_loc2_)
         {
            DENY_CLICKED = "DENY_CLICKED";
            if(_loc2_)
            {
               ACCEPT_CLICKED = "ACCEPT_CLICKED";
               if(!(_loc1_ && QueryMiniLayer))
               {
                  addr005c:
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
               §§goto(addr0080);
            }
            §§goto(addr005c);
         }
         addr0080:
         return;
      }
      §§goto(addr005c);
      
      private var _1480909402acceptButton:MultistateButton;
      
      private var _1999277125acceptButtonGroup:HGroup;
      
      private var _236983790confirmButton:MultistateButton;
      
      private var _109729886denyButton:MultistateButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _3321844line:BriskImageDynaLib;
      
      private var _273241018mainGroup:VGroup;
      
      private var _229684271selectButtonGroup:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:QueryMiniLayerVo;
      
      private var _isDirty:Boolean;
      
      public function QueryMiniLayer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(_loc1_ || Boolean(this))
            {
               mx_internal::_document = this;
               addr0025:
               if(_loc1_ || _loc2_)
               {
                  this.width = 540;
                  if(!_loc2_)
                  {
                     this.height = 313;
                     if(!_loc2_)
                     {
                        this.showAttentionSign = true;
                        if(_loc1_ || _loc1_)
                        {
                           addr007b:
                           this.mxmlContentFactory = new DeferredInstanceFromFunction(this._QueryMiniLayer_Array1_c);
                        }
                        return;
                     }
                  }
               }
            }
            §§goto(addr007b);
         }
         §§goto(addr0025);
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
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr0048);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr0054);
            }
            addr0048:
            return;
         }
         addr0054:
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
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.commitProperties();
            if(!_loc2_)
            {
               §§push(this._data);
               if(_loc3_)
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     var _temp_2:* = §§pop();
                     §§push(_temp_2);
                     if(_temp_2)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§pop();
                           if(_loc3_)
                           {
                              §§push(this._isDirty);
                              if(_loc3_)
                              {
                                 addr0051:
                                 §§push(§§pop());
                                 if(!_loc2_)
                                 {
                                    §§goto(addr0057);
                                 }
                                 §§goto(addr0105);
                              }
                              §§goto(addr0057);
                           }
                           §§goto(addr00a6);
                        }
                        §§goto(addr0051);
                     }
                  }
                  addr0057:
                  if(§§pop())
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        this._isDirty = false;
                        if(!_loc2_)
                        {
                           title = this._data.title;
                           if(_loc3_ || _loc2_)
                           {
                              this.flavourText.text = this._data.layerText;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr00a6:
                                 var _temp_8:* = this.selectButtonGroup;
                                 var _loc1_:*;
                                 this.selectButtonGroup.visible = _loc1_ = this._data.showQueryButtons;
                                 _temp_8.includeInLayout = _loc1_;
                                 if(_loc3_ || _loc3_)
                                 {
                                    var _temp_11:* = this.acceptButtonGroup;
                                    this.acceptButtonGroup.visible = _loc1_ = !this._data.showQueryButtons;
                                    _temp_11.includeInLayout = _loc1_;
                                    addr00cb:
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr0105:
                                       addr0102:
                                       if(this._data.showQueryButtons)
                                       {
                                          if(_loc3_ || _loc3_)
                                          {
                                             addr0116:
                                             §§push(this.confirmButton);
                                             if(!_loc2_)
                                             {
                                                §§push(this._data);
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   §§push(§§pop().confirmBtnLabel);
                                                   if(_loc3_)
                                                   {
                                                      §§pop().label = §§pop();
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr014b);
                                                      }
                                                      §§goto(addr018c);
                                                   }
                                                   addr014b:
                                                   this.confirmButton.toolTip = this._data.confirmBtnTooltip;
                                                   §§goto(addr0148);
                                                }
                                                addr0148:
                                                §§goto(addr0144);
                                             }
                                             addr0144:
                                             addr0140:
                                             if(!(_loc2_ && Boolean(this)))
                                             {
                                                addr015a:
                                                §§push(this.denyButton);
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   §§push(this._data);
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§pop().denyBtnLabel);
                                                      if(_loc3_)
                                                      {
                                                         §§pop().label = §§pop();
                                                         if(_loc3_ || _loc1_)
                                                         {
                                                            addr0197:
                                                            this.denyButton.toolTip = this._data.denyBtnTooltip;
                                                            addr0194:
                                                            addr0190:
                                                            addr018c:
                                                            if(_loc2_ && _loc2_)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr01e3:
                                                            this.acceptButton.toolTip = this._data.acceptBtnTooltip;
                                                            addr01d7:
                                                            addr01df:
                                                            addr01db:
                                                         }
                                                         §§goto(addr01e5);
                                                      }
                                                      §§goto(addr0197);
                                                   }
                                                   §§goto(addr0194);
                                                }
                                                §§goto(addr0190);
                                             }
                                             §§goto(addr01e5);
                                          }
                                          §§goto(addr01d7);
                                       }
                                       else
                                       {
                                          §§push(this.acceptButton);
                                          if(_loc3_)
                                          {
                                             §§push(this._data);
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop().acceptBtnLabel);
                                                if(_loc3_)
                                                {
                                                   §§pop().label = §§pop();
                                                   if(_loc3_)
                                                   {
                                                      §§goto(addr01d7);
                                                   }
                                                   §§goto(addr01e5);
                                                }
                                                §§goto(addr01e3);
                                             }
                                             §§goto(addr01df);
                                          }
                                       }
                                       §§goto(addr01db);
                                    }
                                    §§goto(addr01d7);
                                 }
                                 §§goto(addr0116);
                              }
                              §§goto(addr0140);
                           }
                           §§goto(addr00cb);
                        }
                        §§goto(addr015a);
                     }
                     §§goto(addr00a6);
                  }
                  §§goto(addr01e5);
               }
               §§goto(addr0102);
            }
            §§goto(addr0116);
         }
         addr01e5:
      }
      
      private function handleButtonClicked(param1:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(this)))
         {
            if(param1.currentTarget is MultistateButton)
            {
               if(_loc3_)
               {
                  addr0032:
                  StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
               }
               var _loc2_:* = param1.currentTarget;
               if(!_loc4_)
               {
                  switch(_loc2_)
                  {
                     case this.confirmButton:
                        if(_loc4_)
                        {
                           addr00f6:
                           §§push(1);
                           if(_loc4_ && Boolean(this))
                           {
                           }
                        }
                        break;
                     case this.denyButton:
                        if(!(_loc4_ && _loc3_))
                        {
                           §§goto(addr00f6);
                        }
                     case this.acceptButton:
                        §§push(2);
                        if(_loc4_)
                        {
                        }
                        break;
                     default:
                        §§push(3);
                  }
                  switch(§§pop())
                  {
                     case 0:
                        dispatchEvent(new Event(CONFIRM_CLICKED,true));
                        if(_loc4_ && Boolean(this))
                        {
                        }
                        break;
                     case 1:
                        dispatchEvent(new Event(DENY_CLICKED,true));
                        if(_loc3_)
                        {
                        }
                        break;
                     case 2:
                        dispatchEvent(new Event(ACCEPT_CLICKED,true));
                        if(_loc4_ && Boolean(this))
                        {
                        }
                  }
                  return;
               }
               §§push(0);
               if(_loc3_)
               {
               }
               §§goto(addr012b);
            }
            §§goto(addr013e);
         }
         §§goto(addr0032);
      }
      
      public function set data(param1:QueryMiniLayerVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  this._data = param1;
                  if(!_loc2_)
                  {
                     this._isDirty = true;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0073:
                        invalidateProperties();
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr0073);
               }
            }
            addr0078:
            return;
         }
         §§goto(addr0073);
      }
      
      private function _QueryMiniLayer_Array1_c() : Array
      {
         return [this._QueryMiniLayer_VGroup1_i()];
      }
      
      private function _QueryMiniLayer_VGroup1_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.paddingTop = 45;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.paddingBottom = 45;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.mxmlContent = [this._QueryMiniLayer_LocaLabel1_i(),this._QueryMiniLayer_BriskImageDynaLib1_i(),this._QueryMiniLayer_Group1_c(),this._QueryMiniLayer_HGroup1_i(),this._QueryMiniLayer_HGroup2_i()];
                        if(_loc2_)
                        {
                           addr009f:
                           _loc1_.id = "mainGroup";
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr00b2:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr00ca:
                                    _loc1_.document = this;
                                    if(_loc2_ || Boolean(_loc1_))
                                    {
                                       addr00db:
                                       this.mainGroup = _loc1_;
                                       if(!_loc3_)
                                       {
                                          addr00e5:
                                          BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
                                       }
                                    }
                                    §§goto(addr00f2);
                                 }
                                 §§goto(addr00e5);
                              }
                              §§goto(addr00db);
                           }
                           §§goto(addr00f2);
                        }
                        §§goto(addr00ca);
                     }
                  }
                  §§goto(addr00f2);
               }
               §§goto(addr009f);
            }
            addr00f2:
            return _loc1_;
         }
         §§goto(addr00b2);
      }
      
      private function _QueryMiniLayer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.height = 66;
            if(_loc2_ || _loc3_)
            {
               addr0033:
               _loc1_.percentWidth = 90;
               if(_loc2_)
               {
                  _loc1_.styleName = "miniLayerFlavourText";
                  §§goto(addr003d);
               }
               §§goto(addr007e);
            }
            addr003d:
            if(!_loc3_)
            {
               _loc1_.id = "flavourText";
               if(!(_loc3_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr007e:
                        _loc1_.document = this;
                        if(_loc2_ || _loc2_)
                        {
                           addr008f:
                           this.flavourText = _loc1_;
                           if(_loc2_)
                           {
                              BindingManager.executeBindings(this,"flavourText",this.flavourText);
                           }
                        }
                     }
                     §§goto(addr00a6);
                  }
                  §§goto(addr008f);
               }
            }
            addr00a6:
            return _loc1_;
         }
         §§goto(addr0033);
      }
      
      private function _QueryMiniLayer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_miniLayer";
            if(_loc3_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "head_line_long";
               if(!_loc2_)
               {
                  _loc1_.id = "line";
                  if(_loc3_ || _loc2_)
                  {
                     addr005e:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0076:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr007f:
                              this.line = _loc1_;
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 addr0091:
                                 BindingManager.executeBindings(this,"line",this.line);
                              }
                              §§goto(addr009e);
                           }
                           §§goto(addr0091);
                        }
                        addr009e:
                        return _loc1_;
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0076);
               }
            }
            §§goto(addr005e);
         }
         §§goto(addr007f);
      }
      
      private function _QueryMiniLayer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.height = 28;
            if(_loc2_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0052:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0056);
            }
            §§goto(addr0052);
         }
         addr0056:
         return _loc1_;
      }
      
      private function _QueryMiniLayer_HGroup1_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.gap = 30;
            if(_loc3_ || _loc3_)
            {
               addr003b:
               _loc1_.includeInLayout = false;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.visible = false;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.mxmlContent = [this._QueryMiniLayer_MultistateButton1_i(),this._QueryMiniLayer_MultistateButton2_i()];
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.id = "selectButtonGroup";
                        if(_loc3_)
                        {
                           addr0091:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    addr00ba:
                                    this.selectButtonGroup = _loc1_;
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr00cc:
                                       BindingManager.executeBindings(this,"selectButtonGroup",this.selectButtonGroup);
                                    }
                                 }
                                 §§goto(addr00d9);
                              }
                           }
                           §§goto(addr00ba);
                        }
                        §§goto(addr00d9);
                     }
                     §§goto(addr00cc);
                  }
                  addr00d9:
                  return _loc1_;
               }
               §§goto(addr00cc);
            }
            §§goto(addr0091);
         }
         §§goto(addr003b);
      }
      
      private function _QueryMiniLayer_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_)
         {
            _loc1_.width = 204;
            if(_loc2_ || _loc2_)
            {
               _loc1_.imageNameLeft = "icon_check";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.libNameLeft = "gui_popups_miniLayer";
                  if(_loc2_)
                  {
                     addr0052:
                     _loc1_.styleName = "confirm";
                     if(_loc2_)
                     {
                        _loc1_.addEventListener("click",this.__confirmButton_click);
                        if(!_loc3_)
                        {
                           _loc1_.id = "confirmButton";
                           if(_loc2_ || Boolean(this))
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr00a1:
                                    _loc1_.document = this;
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr00bd:
                                       this.confirmButton = _loc1_;
                                       if(_loc2_ || Boolean(this))
                                       {
                                          addr00cf:
                                          BindingManager.executeBindings(this,"confirmButton",this.confirmButton);
                                       }
                                       §§goto(addr00dc);
                                    }
                                    §§goto(addr00cf);
                                 }
                                 §§goto(addr00dc);
                              }
                              §§goto(addr00bd);
                           }
                           addr00dc:
                           return _loc1_;
                        }
                        §§goto(addr00cf);
                     }
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr0052);
            }
            §§goto(addr00cf);
         }
         §§goto(addr00a1);
      }
      
      public function __confirmButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.handleButtonClicked(param1);
         }
      }
      
      private function _QueryMiniLayer_MultistateButton2_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.width = 204;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.imageNameLeft = "icon_cancel";
               if(_loc3_)
               {
                  _loc1_.styleName = "abort";
                  if(_loc3_)
                  {
                     addr0053:
                     _loc1_.libNameLeft = "gui_popups_miniLayer";
                     if(_loc3_ || Boolean(this))
                     {
                        addr0075:
                        _loc1_.addEventListener("click",this.__denyButton_click);
                        if(_loc3_ || _loc2_)
                        {
                           addr008e:
                           _loc1_.id = "denyButton";
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00c1:
                                    _loc1_.document = this;
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       addr00d2:
                                       this.denyButton = _loc1_;
                                       if(!_loc2_)
                                       {
                                          BindingManager.executeBindings(this,"denyButton",this.denyButton);
                                       }
                                    }
                                 }
                                 §§goto(addr00e9);
                              }
                              §§goto(addr00d2);
                           }
                        }
                        §§goto(addr00c1);
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr0075);
               }
               §§goto(addr00d2);
            }
            §§goto(addr0053);
         }
         addr00e9:
         return _loc1_;
      }
      
      public function __denyButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this.handleButtonClicked(param1);
         }
      }
      
      private function _QueryMiniLayer_HGroup2_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.includeInLayout = false;
            if(!(_loc2_ && _loc3_))
            {
               addr0031:
               _loc1_.visible = false;
               if(_loc3_)
               {
                  §§goto(addr0046);
               }
               §§goto(addr0056);
            }
            addr0046:
            _loc1_.mxmlContent = [this._QueryMiniLayer_MultistateButton3_i()];
            if(!_loc2_)
            {
               addr0056:
               _loc1_.id = "acceptButtonGroup";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           §§goto(addr0083);
                        }
                     }
                     §§goto(addr0095);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0095);
            }
            addr0083:
            this.acceptButtonGroup = _loc1_;
            if(_loc3_ || Boolean(_loc1_))
            {
               addr0095:
               BindingManager.executeBindings(this,"acceptButtonGroup",this.acceptButtonGroup);
            }
            return _loc1_;
         }
         §§goto(addr0031);
      }
      
      private function _QueryMiniLayer_MultistateButton3_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_)
         {
            _loc1_.width = 204;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.addEventListener("click",this.__acceptButton_click);
               if(_loc3_)
               {
                  _loc1_.id = "acceptButton";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr007b:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              §§goto(addr0084);
                           }
                           §§goto(addr008e);
                        }
                     }
                  }
                  addr0084:
                  this.acceptButton = _loc1_;
                  if(!_loc2_)
                  {
                     addr008e:
                     BindingManager.executeBindings(this,"acceptButton",this.acceptButton);
                  }
               }
               §§goto(addr009b);
            }
            §§goto(addr007b);
         }
         addr009b:
         return _loc1_;
      }
      
      public function __acceptButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this.handleButtonClicked(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get acceptButton() : MultistateButton
      {
         return this._1480909402acceptButton;
      }
      
      public function set acceptButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1480909402acceptButton;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1480909402acceptButton = param1;
                  if(_loc4_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"acceptButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0058);
      }
      
      [Bindable(event="propertyChange")]
      public function get acceptButtonGroup() : HGroup
      {
         return this._1999277125acceptButtonGroup;
      }
      
      public function set acceptButtonGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1999277125acceptButtonGroup;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1999277125acceptButtonGroup = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"acceptButtonGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0073);
      }
      
      [Bindable(event="propertyChange")]
      public function get confirmButton() : MultistateButton
      {
         return this._236983790confirmButton;
      }
      
      public function set confirmButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._236983790confirmButton;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr0049:
                  this._236983790confirmButton = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0062:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confirmButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0071);
                  }
                  §§goto(addr0062);
               }
            }
            addr0071:
            return;
         }
         §§goto(addr0049);
      }
      
      [Bindable(event="propertyChange")]
      public function get denyButton() : MultistateButton
      {
         return this._109729886denyButton;
      }
      
      public function set denyButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._109729886denyButton;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._109729886denyButton = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"denyButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0060);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._800887486flavourText;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._800887486flavourText = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
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
         §§goto(addr0071);
      }
      
      [Bindable(event="propertyChange")]
      public function get line() : BriskImageDynaLib
      {
         return this._3321844line;
      }
      
      public function set line(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3321844line;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._3321844line = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr006c);
               }
               addr005d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr006c:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"line",_loc2_,param1));
                  }
               }
               §§goto(addr007b);
            }
            addr007b:
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGroup() : VGroup
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:VGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._273241018mainGroup;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._273241018mainGroup = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0070);
            }
            addr007f:
            return;
         }
         §§goto(addr0060);
      }
      
      [Bindable(event="propertyChange")]
      public function get selectButtonGroup() : HGroup
      {
         return this._229684271selectButtonGroup;
      }
      
      public function set selectButtonGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._229684271selectButtonGroup;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._229684271selectButtonGroup = param1;
                  if(_loc4_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectButtonGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0067);
            }
            addr0076:
            return;
         }
         §§goto(addr0058);
      }
   }
}

