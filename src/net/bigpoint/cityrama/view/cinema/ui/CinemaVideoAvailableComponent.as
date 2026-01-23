package net.bigpoint.cityrama.view.cinema.ui
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.cinema.vo.CinemaLayerVo;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class CinemaVideoAvailableComponent extends Group
   {
      
      public static const EVENT_PLAY_CLICKED:String = "EVENT_PLAY_CLICKED";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && CinemaVideoAvailableComponent))
      {
         EVENT_PLAY_CLICKED = "EVENT_PLAY_CLICKED";
      }
      
      private var _1166031975headerLabel:LocaLabel;
      
      private var _8439162mainText:LocaLabel;
      
      private var _1097557894playButton:MultistateButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CinemaLayerVo;
      
      private var _isDirty:Boolean;
      
      public function CinemaVideoAvailableComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr004b);
               }
               §§goto(addr0061);
            }
            §§goto(addr0056);
         }
         addr004b:
         this.width = 515;
         if(_loc1_)
         {
            addr0056:
            this.height = 240;
            if(!_loc2_)
            {
               addr0061:
               this.mxmlContent = [this._CinemaVideoAvailableComponent_BriskImageDynaLib1_c(),this._CinemaVideoAvailableComponent_HGroup1_c()];
            }
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               addr002f:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || Boolean(param1))
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         §§goto(addr002f);
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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(_loc1_ || _loc1_)
            {
               §§push(Boolean(this._data));
               if(!_loc2_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§pop();
                        if(!_loc2_)
                        {
                           §§goto(addr0053);
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr0052);
                  }
                  addr0053:
                  §§push(this._isDirty);
                  if(_loc1_)
                  {
                     addr0052:
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        addr0064:
                        this._isDirty = false;
                        if(_loc1_ || _loc2_)
                        {
                           this.headerLabel.text = this._data.headerText;
                           if(_loc1_)
                           {
                              addr0092:
                              this.mainText.text = this._data.layerText;
                              if(_loc1_)
                              {
                                 addr00a4:
                                 §§push(this.playButton);
                                 if(_loc1_ || _loc2_)
                                 {
                                    §§push(this._data);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§push(§§pop().buttonLabel);
                                       if(!_loc2_)
                                       {
                                          §§pop().label = §§pop();
                                          if(!_loc2_)
                                          {
                                             addr00e0:
                                             §§push(this.playButton);
                                             if(!_loc2_)
                                             {
                                                addr00f0:
                                                §§pop().toolTip = this._data.buttonTooltip;
                                                addr00ed:
                                                addr00e9:
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   addr0103:
                                                   this.playButton.enabled = true;
                                                   addr00ff:
                                                }
                                                §§goto(addr0107);
                                             }
                                             §§goto(addr0103);
                                          }
                                          §§goto(addr0107);
                                       }
                                       §§goto(addr00f0);
                                    }
                                    §§goto(addr00ed);
                                 }
                                 §§goto(addr00e9);
                              }
                              §§goto(addr00ff);
                           }
                        }
                        §§goto(addr00e0);
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr0107);
               }
               §§goto(addr0052);
            }
            addr0107:
            return;
         }
         §§goto(addr0064);
      }
      
      private function handlePlayClicked(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.playButton.enabled = false;
            if(_loc2_)
            {
               dispatchEvent(new Event(EVENT_PLAY_CLICKED,true,true));
            }
         }
      }
      
      public function set data(param1:CinemaLayerVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            if(!RandomUtilities.isEqual(this._data,param1))
            {
               if(_loc3_ || _loc3_)
               {
                  addr005b:
                  this._data = param1;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr006d:
                     this._isDirty = true;
                     if(!(_loc2_ && _loc3_))
                     {
                        invalidateProperties();
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr006d);
            }
            addr0084:
            return;
         }
         §§goto(addr005b);
      }
      
      private function _CinemaVideoAvailableComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "bluepost_upselling";
               if(_loc2_ || Boolean(this))
               {
                  addr005e:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr005e);
      }
      
      private function _CinemaVideoAvailableComponent_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.top = 24;
            if(_loc3_ || _loc2_)
            {
               _loc1_.bottom = 10;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.percentWidth = 94;
                  if(_loc3_)
                  {
                     §§goto(addr0050);
                  }
                  §§goto(addr006f);
               }
            }
            addr0050:
            _loc1_.percentHeight = 100;
            if(!(_loc2_ && _loc3_))
            {
               addr006f:
               _loc1_.horizontalCenter = 0;
               if(_loc3_)
               {
                  addr0079:
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc2_ && _loc3_))
                  {
                     addr008c:
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.mxmlContent = [this._CinemaVideoAvailableComponent_Group2_c(),this._CinemaVideoAvailableComponent_Group4_c()];
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr00c7);
                        }
                     }
                  }
                  §§goto(addr00db);
               }
               §§goto(addr008c);
            }
            addr00c7:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr00db:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0079);
      }
      
      private function _CinemaVideoAvailableComponent_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 50;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.mxmlContent = [this._CinemaVideoAvailableComponent_Group3_c(),this._CinemaVideoAvailableComponent_BriskImageDynaLib4_c()];
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr007c:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr007c);
               }
            }
            addr0080:
            return _loc1_;
         }
         §§goto(addr007c);
      }
      
      private function _CinemaVideoAvailableComponent_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_)
            {
               addr002b:
               _loc1_.verticalCenter = 0;
               if(!(_loc2_ && _loc3_))
               {
                  addr0048:
                  _loc1_.width = 195;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr005b:
                     _loc1_.height = 195;
                     if(!_loc2_)
                     {
                        _loc1_.mxmlContent = [this._CinemaVideoAvailableComponent_BriskImageDynaLib2_c(),this._CinemaVideoAvailableComponent_BriskImageDynaLib3_c()];
                        if(_loc3_ || _loc3_)
                        {
                           addr008f:
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
                  §§goto(addr008f);
               }
               §§goto(addr005b);
            }
            §§goto(addr0048);
         }
         §§goto(addr002b);
      }
      
      private function _CinemaVideoAvailableComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr0048:
               _loc1_.dynaBmpSourceName = "special_cardboard_big";
               if(_loc3_ || Boolean(this))
               {
                  §§goto(addr005b);
               }
               §§goto(addr0067);
            }
            addr005b:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr0067:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0048);
      }
      
      private function _CinemaVideoAvailableComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_largeGoodIcons";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "ressource_rc_big";
               if(_loc2_)
               {
                  addr0047:
                  _loc1_.verticalCenter = 0;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.horizontalCenter = 0;
                     addr0059:
                     if(!(_loc3_ && Boolean(this)))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              addr008e:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr008e);
               }
               addr0092:
               return _loc1_;
            }
            §§goto(addr0059);
         }
         §§goto(addr0047);
      }
      
      private function _CinemaVideoAvailableComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaBmpSourceName = "quest_bubble_icon_trophy";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaLibName = "gui_popups_questPopup";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.top = -2;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.left = 18;
                     addr0065:
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              addr0097:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr0097);
                  }
                  addr009b:
                  return _loc1_;
               }
               §§goto(addr0065);
            }
            §§goto(addr0097);
         }
         §§goto(addr0065);
      }
      
      private function _CinemaVideoAvailableComponent_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 50;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._CinemaVideoAvailableComponent_VGroup1_c()];
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0073:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0073);
            }
         }
         addr0083:
         return _loc1_;
      }
      
      private function _CinemaVideoAvailableComponent_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(!(_loc3_ && Boolean(this)))
               {
                  §§goto(addr003c);
               }
               §§goto(addr004f);
            }
            §§goto(addr006f);
         }
         addr003c:
         _loc1_.width = 240;
         if(_loc2_ || _loc2_)
         {
            _loc1_.height = 195;
            addr004f:
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr006f:
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.gap = 1;
                     if(!_loc3_)
                     {
                        §§goto(addr00ab);
                     }
                  }
               }
            }
            §§goto(addr00d3);
         }
         addr00ab:
         _loc1_.mxmlContent = [this._CinemaVideoAvailableComponent_Group5_c(),this._CinemaVideoAvailableComponent_HGroup3_c(),this._CinemaVideoAvailableComponent_MultistateButton1_i()];
         if(!_loc3_)
         {
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr00d3:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _CinemaVideoAvailableComponent_Group5_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.height = 40;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.mxmlContent = [this._CinemaVideoAvailableComponent_BlueBarComponent1_c(),this._CinemaVideoAvailableComponent_BriskImageDynaLib5_c(),this._CinemaVideoAvailableComponent_HGroup2_c()];
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr0079);
                  }
                  §§goto(addr008d);
               }
               addr0079:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr008d:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0091);
            }
            §§goto(addr008d);
         }
         addr0091:
         return _loc1_;
      }
      
      private function _CinemaVideoAvailableComponent_BlueBarComponent1_c() : BlueBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.percentHeight = 100;
               §§goto(addr003f);
            }
            §§goto(addr0073);
         }
         addr003f:
         if(!(_loc3_ && Boolean(this)))
         {
            if(!_loc1_.document)
            {
               if(_loc2_ || Boolean(this))
               {
                  addr0073:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _CinemaVideoAvailableComponent_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_rewardLayer";
            if(!_loc3_)
            {
               addr003e:
               _loc1_.dynaBmpSourceName = "icon_cinema";
               if(_loc2_)
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
         §§goto(addr003e);
      }
      
      private function _CinemaVideoAvailableComponent_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 70;
            if(_loc3_)
            {
               _loc1_.percentHeight = 98;
               if(!_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.verticalCenter = 0;
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.verticalAlign = "middle";
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           §§goto(addr0079);
                        }
                        §§goto(addr00a5);
                     }
                     addr0079:
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.mxmlContent = [this._CinemaVideoAvailableComponent_LocaLabel1_i()];
                        if(_loc3_)
                        {
                           addr00a5:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr00b1:
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     §§goto(addr00b5);
                  }
                  §§goto(addr00a5);
               }
               addr00b5:
               return _loc1_;
            }
            §§goto(addr00b1);
         }
         §§goto(addr00a5);
      }
      
      private function _CinemaVideoAvailableComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.styleName = "fieldInfoHeader";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(!_loc2_)
                  {
                     _loc1_.id = "headerLabel";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              _loc1_.document = this;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr0090:
                                 this.headerLabel = _loc1_;
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr00a2:
                                    BindingManager.executeBindings(this,"headerLabel",this.headerLabel);
                                 }
                              }
                              §§goto(addr00af);
                           }
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr00af);
                  }
                  §§goto(addr00a2);
               }
               addr00af:
               return _loc1_;
            }
         }
         §§goto(addr0090);
      }
      
      private function _CinemaVideoAvailableComponent_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(!_loc3_)
                  {
                     §§goto(addr004a);
                  }
               }
               §§goto(addr007f);
            }
            addr004a:
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.mxmlContent = [this._CinemaVideoAvailableComponent_LocaLabel2_i()];
               addr005c:
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr007f:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
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
      
      private function _CinemaVideoAvailableComponent_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "eventRuntime";
            if(_loc3_ || _loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.id = "mainText";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr005c:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr0085:
                              this.mainText = _loc1_;
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 addr0097:
                                 BindingManager.executeBindings(this,"mainText",this.mainText);
                              }
                           }
                           §§goto(addr00a4);
                        }
                        §§goto(addr0097);
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr005c);
            }
         }
         addr00a4:
         return _loc1_;
      }
      
      private function _CinemaVideoAvailableComponent_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.width = 200;
            if(_loc3_ || _loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr005b:
                  _loc1_.addEventListener("click",this.__playButton_click);
                  if(_loc3_)
                  {
                     _loc1_.id = "playButton";
                     if(!_loc2_)
                     {
                        §§goto(addr0077);
                     }
                     §§goto(addr008f);
                  }
                  addr0077:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr008f:
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           §§goto(addr0098);
                        }
                        §§goto(addr00aa);
                     }
                  }
                  addr0098:
                  this.playButton = _loc1_;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr00aa:
                     BindingManager.executeBindings(this,"playButton",this.playButton);
                  }
                  §§goto(addr00b7);
               }
               §§goto(addr00aa);
            }
            addr00b7:
            return _loc1_;
         }
         §§goto(addr005b);
      }
      
      public function __playButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.handlePlayClicked(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headerLabel() : LocaLabel
      {
         return this._1166031975headerLabel;
      }
      
      public function set headerLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1166031975headerLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1166031975headerLabel = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005e);
      }
      
      [Bindable(event="propertyChange")]
      public function get mainText() : LocaLabel
      {
         return this._8439162mainText;
      }
      
      public function set mainText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._8439162mainText;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._8439162mainText = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainText",_loc2_,param1));
                        }
                     }
                     §§goto(addr0086);
                  }
               }
               §§goto(addr0077);
            }
            addr0086:
            return;
         }
         §§goto(addr0077);
      }
      
      [Bindable(event="propertyChange")]
      public function get playButton() : MultistateButton
      {
         return this._1097557894playButton;
      }
      
      public function set playButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1097557894playButton;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1097557894playButton = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr006c);
               }
               addr005c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr006c:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playButton",_loc2_,param1));
                  }
               }
               §§goto(addr007b);
            }
            addr007b:
            return;
         }
         §§goto(addr005c);
      }
   }
}

