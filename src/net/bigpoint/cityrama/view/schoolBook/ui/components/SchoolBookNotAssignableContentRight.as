package net.bigpoint.cityrama.view.schoolBook.ui.components
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.HeaderComponentSmall;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.schoolBook.ui.events.SchoolBookEvent;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class SchoolBookNotAssignableContentRight extends Group
   {
      
      private var _1474880769assignButton:MultistateButton;
      
      private var _1682553352bottomText:LocaLabel;
      
      private var _1112078072fireButton:MultistateButton;
      
      private var _1846981337informationHeader:HeaderComponentSmall;
      
      private var _1139881950topText:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ProfessionalDTO;
      
      public function SchoolBookNotAssignableContentRight()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
            if(!(_loc1_ && _loc2_))
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  §§goto(addr004a);
               }
            }
            §§goto(addr0092);
         }
         addr004a:
         this.percentWidth = 100;
         if(!(_loc1_ && _loc1_))
         {
            this.percentHeight = 100;
            if(!_loc1_)
            {
               this.mxmlContent = [this._SchoolBookNotAssignableContentRight_BriskImageDynaLib1_c(),this._SchoolBookNotAssignableContentRight_VGroup1_c(),this._SchoolBookNotAssignableContentRight_HGroup3_c(),this._SchoolBookNotAssignableContentRight_BriskMCDynaLib1_c()];
               if(_loc2_)
               {
                  addr0092:
                  this.addEventListener("creationComplete",this.___SchoolBookNotAssignableContentRight_Group1_creationComplete);
               }
               §§goto(addr009e);
            }
            §§goto(addr0092);
         }
         addr009e:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            super.moduleFactory = param1;
            if(_loc3_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
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
         if(_loc2_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            this.fireButton.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.fireSpecialist");
            if(_loc2_ || _loc2_)
            {
               this.informationHeader.label = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.emergencyOff.header.capital");
               if(!(_loc1_ && Boolean(this)))
               {
                  addr0066:
                  this.assignButton.label = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.assign");
                  if(_loc2_ || _loc2_)
                  {
                     this.topText.text = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.emergencyOff.text.top");
                     if(!_loc1_)
                     {
                        this.bottomText.text = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.emergencyOff.text.bottom");
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0066);
      }
      
      private function handleFireProfessionalClick() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SchoolBookEvent = null;
         if(_loc2_ || Boolean(this))
         {
            if(this._data)
            {
               addr0039:
               _loc1_ = new SchoolBookEvent(SchoolBookEvent.FIRE_PROFESSIONAL,true);
               if(_loc2_)
               {
                  _loc1_.pDTO = this._data;
                  if(!_loc3_)
                  {
                     dispatchEvent(_loc1_);
                  }
               }
            }
            return;
         }
         §§goto(addr0039);
      }
      
      public function set data(param1:ProfessionalDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._data = param1;
         }
      }
      
      private function _SchoolBookNotAssignableContentRight_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaBmpSourceName = "bg_blue_finished";
            if(_loc3_)
            {
               §§goto(addr003e);
            }
            §§goto(addr0072);
         }
         addr003e:
         _loc1_.dynaLibName = "gui_popups_schoolBook";
         if(!_loc2_)
         {
            _loc1_.width = 372;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.height = 280;
               if(_loc3_)
               {
                  addr0072:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0082);
            }
            §§goto(addr0072);
         }
         addr0082:
         return _loc1_;
      }
      
      private function _SchoolBookNotAssignableContentRight_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.width = 372;
            if(!_loc2_)
            {
               addr0032:
               _loc1_.height = 280;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.paddingLeft = 10;
                  if(!_loc2_)
                  {
                     _loc1_.paddingRight = 10;
                     if(_loc3_ || _loc2_)
                     {
                        addr0071:
                        _loc1_.gap = 0;
                        if(!_loc2_)
                        {
                           addr007b:
                           _loc1_.horizontalAlign = "center";
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              _loc1_.mxmlContent = [this._SchoolBookNotAssignableContentRight_Group2_c(),this._SchoolBookNotAssignableContentRight_VGroup2_c()];
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr00b8:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc2_)
                                    {
                                       addr00c4:
                                       _loc1_.document = this;
                                    }
                                 }
                              }
                              §§goto(addr00c8);
                           }
                           §§goto(addr00c4);
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr007b);
                  }
                  addr00c8:
                  return _loc1_;
               }
               §§goto(addr007b);
            }
            §§goto(addr0071);
         }
         §§goto(addr0032);
      }
      
      private function _SchoolBookNotAssignableContentRight_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.height = 40;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  addr0054:
                  _loc1_.mxmlContent = [this._SchoolBookNotAssignableContentRight_HeaderComponentSmall1_i()];
                  if(_loc3_)
                  {
                     §§goto(addr0064);
                  }
                  §§goto(addr0070);
               }
               §§goto(addr0064);
            }
            §§goto(addr0054);
         }
         addr0064:
         if(!_loc1_.document)
         {
            if(_loc3_)
            {
               addr0070:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _SchoolBookNotAssignableContentRight_HeaderComponentSmall1_i() : HeaderComponentSmall
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HeaderComponentSmall = new HeaderComponentSmall();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               §§goto(addr0036);
            }
            §§goto(addr0049);
         }
         addr0036:
         _loc1_.textHAlign = "center";
         if(_loc3_ || Boolean(this))
         {
            addr0049:
            _loc1_.bottom = 4;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               §§goto(addr006a);
            }
            §§goto(addr00aa);
         }
         addr006a:
         _loc1_.id = "informationHeader";
         if(_loc3_)
         {
            if(!_loc1_.document)
            {
               if(_loc3_ || Boolean(this))
               {
                  §§goto(addr0089);
               }
               §§goto(addr00bc);
            }
            §§goto(addr00aa);
         }
         addr0089:
         _loc1_.document = this;
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            addr00aa:
            this.informationHeader = _loc1_;
            if(!(_loc2_ && _loc3_))
            {
               addr00bc:
               BindingManager.executeBindings(this,"informationHeader",this.informationHeader);
            }
         }
         return _loc1_;
      }
      
      private function _SchoolBookNotAssignableContentRight_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.height = 230;
               if(!_loc3_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!_loc3_)
                     {
                        addr0068:
                        _loc1_.mxmlContent = [this._SchoolBookNotAssignableContentRight_HGroup1_c(),this._SchoolBookNotAssignableContentRight_HGroup2_c()];
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr0086:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr0092:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr0096);
                        }
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr0068);
               }
               addr0096:
               return _loc1_;
            }
            §§goto(addr0068);
         }
         §§goto(addr0086);
      }
      
      private function _SchoolBookNotAssignableContentRight_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentHeight = 50;
            if(!_loc2_)
            {
               _loc1_.percentWidth = 80;
               if(_loc3_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!_loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.mxmlContent = [this._SchoolBookNotAssignableContentRight_LocaLabel1_i()];
                        if(_loc3_ || _loc3_)
                        {
                           addr0089:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr0099);
               }
               §§goto(addr0089);
            }
         }
         addr0099:
         return _loc1_;
      }
      
      private function _SchoolBookNotAssignableContentRight_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.styleName = "thirteenDarkCenter";
            if(!_loc2_)
            {
               addr0035:
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.id = "topText";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              §§goto(addr008b);
                           }
                           §§goto(addr009d);
                        }
                     }
                     addr008b:
                     this.topText = _loc1_;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr009d:
                        BindingManager.executeBindings(this,"topText",this.topText);
                     }
                     §§goto(addr00aa);
                  }
                  addr00aa:
                  return _loc1_;
               }
            }
            §§goto(addr008b);
         }
         §§goto(addr0035);
      }
      
      private function _SchoolBookNotAssignableContentRight_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentHeight = 50;
            if(_loc2_)
            {
               _loc1_.percentWidth = 80;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.verticalAlign = "top";
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.mxmlContent = [this._SchoolBookNotAssignableContentRight_LocaLabel2_i()];
                        addr0073:
                        if(!(_loc3_ && _loc3_))
                        {
                           addr009a:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr00ae:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00b2);
                        }
                        §§goto(addr00ae);
                     }
                     §§goto(addr00b2);
                  }
                  §§goto(addr0073);
               }
               addr00b2:
               return _loc1_;
            }
            §§goto(addr00ae);
         }
         §§goto(addr009a);
      }
      
      private function _SchoolBookNotAssignableContentRight_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "thirteenBlueCenter";
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.id = "bottomText";
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0075:
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr007e:
                              this.bottomText = _loc1_;
                              if(_loc3_)
                              {
                                 addr0088:
                                 BindingManager.executeBindings(this,"bottomText",this.bottomText);
                              }
                           }
                           §§goto(addr0095);
                        }
                        §§goto(addr0088);
                     }
                     §§goto(addr007e);
                  }
               }
               addr0095:
               return _loc1_;
            }
            §§goto(addr0075);
         }
         §§goto(addr007e);
      }
      
      private function _SchoolBookNotAssignableContentRight_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_)
               {
                  addr0049:
                  _loc1_.horizontalAlign = "center";
                  if(!_loc2_)
                  {
                     §§goto(addr0053);
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0094);
            }
            addr0053:
            _loc1_.bottom = 5;
            if(_loc3_)
            {
               _loc1_.mxmlContent = [this._SchoolBookNotAssignableContentRight_MultistateButton1_i(),this._SchoolBookNotAssignableContentRight_MultistateButton2_i()];
               if(_loc3_)
               {
                  addr0080:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0094:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0098);
               }
               §§goto(addr0094);
            }
            addr0098:
            return _loc1_;
         }
         §§goto(addr0049);
      }
      
      private function _SchoolBookNotAssignableContentRight_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_)
         {
            _loc1_.libNameLeft = "gui_popups_schoolBook";
            if(_loc2_)
            {
               _loc1_.imageNameLeft = "white_x_icon";
               if(_loc2_ || _loc3_)
               {
                  _loc1_.styleName = "abort";
                  if(_loc2_)
                  {
                     _loc1_.width = 42;
                     §§goto(addr0049);
                  }
               }
               §§goto(addr0061);
            }
            §§goto(addr00b6);
         }
         addr0049:
         if(!_loc3_)
         {
            addr0061:
            _loc1_.addEventListener("click",this.__fireButton_click);
            if(!_loc3_)
            {
               §§goto(addr0071);
            }
            §§goto(addr007c);
         }
         addr0071:
         _loc1_.id = "fireButton";
         if(_loc2_)
         {
            addr007c:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.document = this;
                  if(!_loc3_)
                  {
                     addr00a4:
                     this.fireButton = _loc1_;
                     if(!(_loc3_ && _loc2_))
                     {
                        addr00b6:
                        BindingManager.executeBindings(this,"fireButton",this.fireButton);
                     }
                  }
                  §§goto(addr00c3);
               }
               §§goto(addr00b6);
            }
            §§goto(addr00a4);
         }
         addr00c3:
         return _loc1_;
      }
      
      public function __fireButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.handleFireProfessionalClick();
         }
      }
      
      private function _SchoolBookNotAssignableContentRight_MultistateButton2_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!_loc3_)
         {
            _loc1_.libNameLeft = "gui_popups_FriendBook";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.imageNameLeft = "button_icon_checkmark";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.width = 200;
                  if(!_loc3_)
                  {
                     _loc1_.enabled = false;
                     if(_loc2_ || _loc3_)
                     {
                        addr0070:
                        _loc1_.id = "assignButton";
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr009d:
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    §§goto(addr00a6);
                                 }
                              }
                              §§goto(addr00b0);
                           }
                           §§goto(addr00a6);
                        }
                        §§goto(addr009d);
                     }
                  }
                  addr00a6:
                  this.assignButton = _loc1_;
                  if(_loc2_)
                  {
                     addr00b0:
                     BindingManager.executeBindings(this,"assignButton",this.assignButton);
                  }
                  return _loc1_;
               }
               §§goto(addr0070);
            }
            §§goto(addr009d);
         }
         §§goto(addr0070);
      }
      
      private function _SchoolBookNotAssignableContentRight_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaMCSourceName = "stickytape_right";
               if(_loc3_)
               {
                  _loc1_.top = 80;
                  addr004b:
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr006a);
                  }
                  §§goto(addr0080);
               }
               addr006a:
               _loc1_.right = 3;
               if(!_loc2_)
               {
                  addr0074:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0080:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr004b);
         }
         §§goto(addr0074);
      }
      
      public function ___SchoolBookNotAssignableContentRight_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleCreationComplete();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get assignButton() : MultistateButton
      {
         return this._1474880769assignButton;
      }
      
      public function set assignButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1474880769assignButton;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1474880769assignButton = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr0074);
               }
               addr005c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(this))
                  {
                     addr0074:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"assignButton",_loc2_,param1));
                  }
               }
               §§goto(addr0083);
            }
         }
         addr0083:
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomText() : LocaLabel
      {
         return this._1682553352bottomText;
      }
      
      public function set bottomText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1682553352bottomText;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1682553352bottomText = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0068:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008e);
               }
               §§goto(addr0068);
            }
         }
         addr008e:
      }
      
      [Bindable(event="propertyChange")]
      public function get fireButton() : MultistateButton
      {
         return this._1112078072fireButton;
      }
      
      public function set fireButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1112078072fireButton;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1112078072fireButton = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr006f);
               }
               addr0060:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fireButton",_loc2_,param1));
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
      public function get informationHeader() : HeaderComponentSmall
      {
         return this._1846981337informationHeader;
      }
      
      public function set informationHeader(param1:HeaderComponentSmall) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1846981337informationHeader;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  addr0055:
                  this._1846981337informationHeader = param1;
                  if(_loc3_)
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"informationHeader",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr005f);
            }
            addr007e:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get topText() : LocaLabel
      {
         return this._1139881950topText;
      }
      
      public function set topText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1139881950topText;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1139881950topText = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr005a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topText",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005a);
      }
   }
}

