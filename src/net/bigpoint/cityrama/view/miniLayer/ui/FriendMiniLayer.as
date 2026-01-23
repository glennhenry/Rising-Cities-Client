package net.bigpoint.cityrama.view.miniLayer.ui
{
   import flash.events.FocusEvent;
   import flashx.textLayout.conversion.TextConverter;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.friends.FriendBookConstants;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.TextInputCursorSave;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class FriendMiniLayer extends MiniLayerWindow
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
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
      
      private var _674613431failIcon:BriskImageDynaLib;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _198043749inviteButton:MultistateButton;
      
      private var _273241018mainGroup:VGroup;
      
      private var _1016041355okIcon:BriskImageDynaLib;
      
      private var _1556596209serverResponseLocaLabel:LocaLabel;
      
      private var _2025208835valueLabel:TextInputCursorSave;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _friendData:String;
      
      private var _isDirty:Boolean = true;
      
      private var _isDirtyText:Boolean = true;
      
      public function FriendMiniLayer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
            if(_loc1_ || Boolean(this))
            {
               mx_internal::_document = this;
               if(_loc1_ || _loc2_)
               {
                  this.width = 540;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr006e:
                     this.height = 313;
                     if(!_loc2_)
                     {
                        addr0079:
                        this.showAttentionSign = false;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr008b:
                           this.mxmlContentFactory = new DeferredInstanceFromFunction(this._FriendMiniLayer_Array1_c);
                        }
                        §§goto(addr009b);
                     }
                  }
                  §§goto(addr008b);
               }
               addr009b:
               return;
            }
            §§goto(addr006e);
         }
         §§goto(addr0079);
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
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  addr0034:
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr003a);
            }
            §§goto(addr0034);
         }
         addr003a:
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
      
      private function createText() : void
      {
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.commitProperties();
            if(!_loc2_)
            {
               §§push(this._isDirtyText);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc1_ || _loc1_)
                     {
                        this.title = ResourceManager.getInstance().getString(String("rcl.miniLayer.addfriend"),String("rcl.miniLayer.addfriend.title"));
                        if(_loc1_ || _loc2_)
                        {
                           this.flavourText.textFlow = TextConverter.importToFlow(ResourceManager.getInstance().getString(String("rcl.miniLayer.addfriend"),String("rcl.miniLayer.addfriend.flavour")),TextConverter.TEXT_FIELD_HTML_FORMAT);
                           if(!_loc2_)
                           {
                              §§push(this.valueLabel);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(ResourceManager.getInstance());
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§push(§§pop().getString(String("rcl.miniLayer.addfriend"),String("rcl.miniLayer.addfriend.defaultInput")));
                                    if(!_loc2_)
                                    {
                                       §§pop().text = §§pop();
                                       if(_loc1_ || _loc2_)
                                       {
                                          §§push(this.inviteButton);
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             §§push(ResourceManager.getInstance());
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                §§push(§§pop().getString(String("rcl.booklayer.friendbook"),String("rcl.booklayer.friendbook.inviteAddFriendButton")));
                                                if(_loc1_ || _loc1_)
                                                {
                                                   §§pop().label = §§pop();
                                                   if(!_loc2_)
                                                   {
                                                      this._isDirtyText = false;
                                                      if(!_loc2_)
                                                      {
                                                         addr015f:
                                                         this.valueLabel.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.friendlist"),String("rcl.tooltips.friendlist.minilayer.invite.textfield"));
                                                         addr014a:
                                                         addr0144:
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            addr018d:
                                                            this.inviteButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.friendlist"),String("rcl.tooltips.friendlist.minilayer.invite.button"));
                                                            addr0178:
                                                            addr0172:
                                                            addr016e:
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               §§goto(addr019c);
                                                            }
                                                            §§goto(addr035a);
                                                         }
                                                         §§goto(addr0239);
                                                      }
                                                      §§goto(addr01d7);
                                                   }
                                                   §§goto(addr0261);
                                                }
                                                §§goto(addr018d);
                                             }
                                             §§goto(addr0178);
                                          }
                                          §§goto(addr0172);
                                       }
                                       §§goto(addr0380);
                                    }
                                    §§goto(addr015f);
                                 }
                                 §§goto(addr014a);
                              }
                              §§goto(addr0144);
                           }
                           §§goto(addr016e);
                        }
                        §§goto(addr0261);
                     }
                  }
                  addr019c:
                  §§goto(addr01a1);
               }
               addr01a1:
               if(this._isDirty)
               {
                  if(!_loc2_)
                  {
                     §§push(this._friendData);
                     if(!_loc2_)
                     {
                        §§push(FriendBookConstants.EVENT_DATA_INVITE_SUCCESS);
                        if(_loc1_ || Boolean(this))
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 addr01d7:
                                 §§push(this.failIcon);
                                 if(_loc1_)
                                 {
                                    §§push(false);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§pop().visible = §§pop();
                                       if(_loc1_)
                                       {
                                          §§push(this.failIcon);
                                          if(_loc1_ || Boolean(this))
                                          {
                                             §§push(false);
                                             if(_loc1_)
                                             {
                                                addr020c:
                                                §§pop().includeInLayout = §§pop();
                                                if(_loc1_ || _loc1_)
                                                {
                                                   §§push(this.okIcon);
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      §§push(true);
                                                      if(!_loc2_)
                                                      {
                                                         §§pop().visible = §§pop();
                                                         if(!_loc2_)
                                                         {
                                                            addr0239:
                                                            §§push(this.okIcon);
                                                            if(!_loc2_)
                                                            {
                                                               §§push(true);
                                                               if(!_loc2_)
                                                               {
                                                                  §§pop().includeInLayout = §§pop();
                                                                  if(_loc1_ || _loc1_)
                                                                  {
                                                                     addr0261:
                                                                     §§push(this.serverResponseLocaLabel);
                                                                     if(_loc1_ || _loc1_)
                                                                     {
                                                                        §§push(ResourceManager.getInstance());
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§push(§§pop().getString(String("rcl.miniLayer.addfriend"),String("rcl.miniLayer.addfriend.success")));
                                                                           if(_loc1_ || Boolean(this))
                                                                           {
                                                                              §§pop().text = §§pop();
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§push(this.serverResponseLocaLabel);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§push("friendInviteMiniLayerSuccess");
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§pop().styleName = §§pop();
                                                                                       if(_loc2_ && _loc1_)
                                                                                       {
                                                                                          addr03c5:
                                                                                          §§push(this.serverResponseLocaLabel);
                                                                                          if(!(_loc2_ && Boolean(this)))
                                                                                          {
                                                                                             addr03d6:
                                                                                             §§push("friendInviteMiniLayer");
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                §§pop().styleName = §§pop();
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   addr04ac:
                                                                                                   this.serverResponseLocaLabel.styleName = "friendInviteMiniLayer";
                                                                                                   addr04a9:
                                                                                                   addr04a5:
                                                                                                }
                                                                                                §§goto(addr04ae);
                                                                                             }
                                                                                             §§goto(addr04ac);
                                                                                          }
                                                                                          §§goto(addr04a9);
                                                                                       }
                                                                                       §§goto(addr04ae);
                                                                                    }
                                                                                    §§goto(addr04ac);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr0391);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr031e:
                                                                                 §§push(this.failIcon);
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    addr0327:
                                                                                    §§push(true);
                                                                                    if(_loc1_ || _loc2_)
                                                                                    {
                                                                                       §§pop().includeInLayout = §§pop();
                                                                                       if(_loc1_)
                                                                                       {
                                                                                          §§push(this.okIcon);
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§push(false);
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                §§pop().visible = §§pop();
                                                                                                if(_loc1_ || Boolean(this))
                                                                                                {
                                                                                                   addr035a:
                                                                                                   §§push(this.okIcon);
                                                                                                   if(_loc1_ || _loc1_)
                                                                                                   {
                                                                                                      addr036b:
                                                                                                      §§push(false);
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         §§pop().includeInLayout = §§pop();
                                                                                                         if(!(_loc2_ && _loc2_))
                                                                                                         {
                                                                                                            addr0380:
                                                                                                            §§push(this.serverResponseLocaLabel);
                                                                                                            if(!(_loc2_ && Boolean(this)))
                                                                                                            {
                                                                                                               addr0391:
                                                                                                               §§push(ResourceManager.getInstance());
                                                                                                               if(_loc1_)
                                                                                                               {
                                                                                                                  §§push(§§pop().getString(String("rcl.miniLayer.addfriend"),String("rcl.miniLayer.addfriend.fail")));
                                                                                                                  if(!(_loc2_ && Boolean(this)))
                                                                                                                  {
                                                                                                                     addr03be:
                                                                                                                     §§pop().text = §§pop();
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        §§goto(addr03c5);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr0468:
                                                                                                                        §§push(this.serverResponseLocaLabel);
                                                                                                                        if(_loc1_)
                                                                                                                        {
                                                                                                                           §§goto(addr0496);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr04a9);
                                                                                                                  }
                                                                                                                  addr0496:
                                                                                                                  §§pop().text = ResourceManager.getInstance().getString(String("rcl.miniLayer.addfriend"),String("rcl.miniLayer.addfriend.foundfail"));
                                                                                                                  §§goto(addr0481);
                                                                                                               }
                                                                                                               addr0481:
                                                                                                               if(_loc1_ || _loc2_)
                                                                                                               {
                                                                                                                  §§goto(addr04a5);
                                                                                                               }
                                                                                                               §§goto(addr04ae);
                                                                                                            }
                                                                                                            §§goto(addr03d6);
                                                                                                         }
                                                                                                         §§goto(addr03c5);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr0459:
                                                                                                         §§pop().includeInLayout = §§pop();
                                                                                                         if(!(_loc2_ && _loc1_))
                                                                                                         {
                                                                                                            §§goto(addr0468);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr04a5);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr0447:
                                                                                                      §§push(false);
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         §§pop().visible = §§pop();
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            addr0458:
                                                                                                            addr0454:
                                                                                                            §§goto(addr0459);
                                                                                                            §§push(this.okIcon);
                                                                                                            §§push(false);
                                                                                                         }
                                                                                                         §§goto(addr04ae);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr0459);
                                                                                                }
                                                                                                §§goto(addr04a5);
                                                                                             }
                                                                                             §§goto(addr0459);
                                                                                          }
                                                                                          §§goto(addr0458);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr042f:
                                                                                       §§pop().includeInLayout = §§pop();
                                                                                       if(_loc1_ || _loc1_)
                                                                                       {
                                                                                          addr043e:
                                                                                          §§push(this.okIcon);
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§goto(addr0447);
                                                                                          }
                                                                                          §§goto(addr0458);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr04ae);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr040d:
                                                                                    §§push(true);
                                                                                    if(!(_loc2_ && Boolean(this)))
                                                                                    {
                                                                                       addr041b:
                                                                                       §§pop().visible = §§pop();
                                                                                       if(!(_loc2_ && _loc2_))
                                                                                       {
                                                                                          addr042a:
                                                                                          addr042e:
                                                                                          §§goto(addr042f);
                                                                                          §§push(this.failIcon);
                                                                                          §§push(true);
                                                                                       }
                                                                                       §§goto(addr04a5);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr042f);
                                                                              }
                                                                              §§goto(addr04ae);
                                                                           }
                                                                           §§goto(addr03be);
                                                                        }
                                                                        §§goto(addr0481);
                                                                     }
                                                                     §§goto(addr03d6);
                                                                  }
                                                                  §§goto(addr04ae);
                                                               }
                                                               §§goto(addr0459);
                                                            }
                                                            §§goto(addr0447);
                                                         }
                                                         §§goto(addr0261);
                                                      }
                                                      §§goto(addr0459);
                                                   }
                                                   §§goto(addr036b);
                                                }
                                                §§goto(addr042a);
                                             }
                                             §§goto(addr041b);
                                          }
                                          else
                                          {
                                             addr0301:
                                             §§push(true);
                                             if(_loc1_ || _loc1_)
                                             {
                                                §§pop().visible = §§pop();
                                                if(!(_loc2_ && Boolean(this)))
                                                {
                                                   §§goto(addr031e);
                                                }
                                                §§goto(addr0454);
                                             }
                                          }
                                          §§goto(addr042f);
                                       }
                                       §§goto(addr0239);
                                    }
                                    §§goto(addr020c);
                                 }
                                 §§goto(addr0301);
                              }
                              §§goto(addr043e);
                           }
                           else
                           {
                              §§push(this._friendData);
                              if(!_loc2_)
                              {
                                 §§push(FriendBookConstants.EVENT_DATA_INVITE_FAIL);
                                 if(_loc1_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc1_ || _loc1_)
                                       {
                                          §§push(this.failIcon);
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             §§goto(addr0301);
                                          }
                                          §§goto(addr0327);
                                       }
                                       §§goto(addr031e);
                                    }
                                    else
                                    {
                                       addr03f3:
                                       addr03ed:
                                       if(this._friendData == FriendBookConstants.EVENT_DATA_INVITE_FAIL_ALLREADY_THERE)
                                       {
                                          if(!_loc2_)
                                          {
                                             §§push(this.failIcon);
                                             if(!(_loc2_ && Boolean(this)))
                                             {
                                                §§goto(addr040d);
                                             }
                                             §§goto(addr042e);
                                          }
                                          §§goto(addr04a5);
                                       }
                                    }
                                    §§goto(addr04ae);
                                 }
                                 §§goto(addr03f3);
                              }
                              §§goto(addr03ed);
                           }
                        }
                        §§goto(addr03f3);
                     }
                     §§goto(addr03ed);
                  }
                  §§goto(addr0261);
               }
               addr04ae:
               return;
            }
            §§goto(addr0261);
         }
         §§goto(addr01d7);
      }
      
      private function cleanAll() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this.valueLabel.text = "";
            if(_loc2_)
            {
               addr002b:
               §§push(this.failIcon);
               if(_loc2_ || Boolean(this))
               {
                  §§push(false);
                  if(_loc2_ || _loc1_)
                  {
                     §§pop().visible = §§pop();
                     if(!(_loc1_ && _loc1_))
                     {
                        addr0068:
                        this.failIcon.includeInLayout = false;
                        addr0067:
                        if(_loc2_ || _loc1_)
                        {
                           §§push(this.okIcon);
                           if(!(_loc1_ && _loc1_))
                           {
                              §§push(false);
                              if(!(_loc1_ && _loc2_))
                              {
                                 §§pop().visible = §§pop();
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§goto(addr00b4);
                                 }
                                 §§goto(addr00c3);
                              }
                              addr00b4:
                              this.okIcon.includeInLayout = false;
                              §§goto(addr00b3);
                           }
                           addr00b3:
                           if(!(_loc1_ && Boolean(this)))
                           {
                              addr00c3:
                              this.serverResponseLocaLabel.text = "";
                           }
                           §§goto(addr00cb);
                        }
                     }
                     §§goto(addr00c3);
                  }
                  §§goto(addr0068);
               }
               §§goto(addr0067);
            }
            addr00cb:
            return;
         }
         §§goto(addr002b);
      }
      
      public function setData(param1:*) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            if(!RandomUtilities.isEqual(param1,this._friendData))
            {
               if(_loc3_)
               {
                  this._isDirty = true;
                  addr0043:
                  if(_loc3_ || Boolean(this))
                  {
                     this._friendData = param1 as String;
                     if(_loc3_ || param1)
                     {
                        this.invalidateProperties();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0043);
      }
      
      private function _FriendMiniLayer_Array1_c() : Array
      {
         return [this._FriendMiniLayer_VGroup1_i()];
      }
      
      private function _FriendMiniLayer_VGroup1_i() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               addr0032:
               _loc1_.paddingTop = 10;
               if(_loc3_)
               {
                  _loc1_.paddingBottom = 45;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.gap = 2;
                        if(!_loc2_)
                        {
                           addr0078:
                           _loc1_.mxmlContent = [this._FriendMiniLayer_LocaLabel1_i(),this._FriendMiniLayer_Group1_c(),this._FriendMiniLayer_Group9_c(),this._FriendMiniLayer_MultistateButton1_i()];
                           if(_loc3_)
                           {
                              addr009a:
                              _loc1_.id = "mainGroup";
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr00ad:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc2_)
                                    {
                                       addr00b9:
                                       _loc1_.document = this;
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          addr00d5:
                                          this.mainGroup = _loc1_;
                                          if(_loc3_ || Boolean(_loc1_))
                                          {
                                             BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
                                          }
                                       }
                                    }
                                    return _loc1_;
                                 }
                                 §§goto(addr00d5);
                              }
                              §§goto(addr00b9);
                           }
                        }
                     }
                     §§goto(addr00d5);
                  }
                  §§goto(addr009a);
               }
               §§goto(addr0078);
            }
            §§goto(addr00ad);
         }
         §§goto(addr0032);
      }
      
      private function _FriendMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.height = 45;
            if(_loc3_ || _loc3_)
            {
               addr003b:
               _loc1_.percentWidth = 85;
               if(_loc3_)
               {
                  _loc1_.styleName = "miniLayerFlavourText";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0064:
                     _loc1_.id = "flavourText";
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr009b:
                                 this.flavourText = _loc1_;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    BindingManager.executeBindings(this,"flavourText",this.flavourText);
                                 }
                              }
                           }
                           §§goto(addr00ba);
                        }
                     }
                  }
                  §§goto(addr009b);
               }
               §§goto(addr0064);
            }
            addr00ba:
            return _loc1_;
         }
         §§goto(addr003b);
      }
      
      private function _FriendMiniLayer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._FriendMiniLayer_VGroup2_c(),this._FriendMiniLayer_VGroup3_c()];
            if(_loc2_ || _loc3_)
            {
               addr0055:
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
         §§goto(addr0055);
      }
      
      private function _FriendMiniLayer_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.mxmlContent = [this._FriendMiniLayer_Group2_c()];
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0048:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr004c);
            }
            §§goto(addr0048);
         }
         addr004c:
         return _loc1_;
      }
      
      private function _FriendMiniLayer_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.mxmlContent = [this._FriendMiniLayer_BriskImageDynaLib1_c(),this._FriendMiniLayer_BriskMCDynaLib1_c(),this._FriendMiniLayer_BriskMCDynaLib2_c()];
            if(!(_loc2_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0078:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr007c);
            }
            §§goto(addr0078);
         }
         addr007c:
         return _loc1_;
      }
      
      private function _FriendMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "quadrillepaper_small";
               if(_loc3_ || Boolean(this))
               {
                  §§goto(addr0064);
               }
               §§goto(addr0070);
            }
         }
         addr0064:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               addr0070:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _FriendMiniLayer_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.right = -10;
            if(_loc3_)
            {
               _loc1_.dynaLibName = "gui_popups_paperPopup";
               if(_loc3_)
               {
                  §§goto(addr004a);
               }
               §§goto(addr005e);
            }
            addr004a:
            _loc1_.dynaMCSourceName = "stickytape_right";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.height = 98;
               addr005e:
               if(_loc3_ || _loc2_)
               {
                  _loc1_.top = 14;
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0091:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0095);
                  }
               }
               §§goto(addr0091);
            }
            addr0095:
            return _loc1_;
         }
         §§goto(addr0091);
      }
      
      private function _FriendMiniLayer_BriskMCDynaLib2_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaMCSourceName = "stickytape_left";
               if(_loc3_)
               {
                  _loc1_.height = 98;
                  if(_loc3_ || Boolean(this))
                  {
                     addr005d:
                     _loc1_.left = -10;
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.top = 14;
                        §§goto(addr006f);
                     }
                     §§goto(addr00a1);
                  }
                  §§goto(addr008d);
               }
               addr006f:
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr008d:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        addr00a1:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr005d);
         }
         §§goto(addr008d);
      }
      
      private function _FriendMiniLayer_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.verticalAlign = "top";
            if(!_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc3_)
               {
                  addr0047:
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_)
                  {
                     addr005d:
                     _loc1_.mxmlContent = [this._FriendMiniLayer_Group3_c(),this._FriendMiniLayer_Group4_c(),this._FriendMiniLayer_BriskImageDynaLib6_c(),this._FriendMiniLayer_HGroup3_c()];
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr008b:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr008f);
                     }
                     §§goto(addr008b);
                  }
               }
               addr008f:
               return _loc1_;
            }
            §§goto(addr005d);
         }
         §§goto(addr0047);
      }
      
      private function _FriendMiniLayer_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.height = 14;
            if(_loc3_ || Boolean(_loc1_))
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
         return _loc1_;
      }
      
      private function _FriendMiniLayer_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.width = 220;
            if(!_loc2_)
            {
               addr0037:
               _loc1_.mxmlContent = [this._FriendMiniLayer_HGroup1_c()];
               if(!(_loc2_ && Boolean(this)))
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
            return _loc1_;
         }
         §§goto(addr0037);
      }
      
      private function _FriendMiniLayer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.gap = 0;
            if(!_loc2_)
            {
               _loc1_.width = 220;
               if(!_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.verticalAlign = "middle";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.mxmlContent = [this._FriendMiniLayer_BriskImageDynaLib2_c(),this._FriendMiniLayer_Group5_c(),this._FriendMiniLayer_HGroup2_c()];
                        if(_loc3_)
                        {
                           addr0090:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 addr00a4:
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0090);
               }
            }
         }
         §§goto(addr00a4);
      }
      
      private function _FriendMiniLayer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "ui_mainbar_icon_population";
               if(_loc3_)
               {
                  addr004b:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0057:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0057);
         }
         §§goto(addr004b);
      }
      
      private function _FriendMiniLayer_Group5_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.width = 6;
            if(_loc3_ || Boolean(_loc1_))
            {
               addr0040:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0040);
      }
      
      private function _FriendMiniLayer_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.gap = 0;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.mxmlContent = [this._FriendMiniLayer_BriskImageDynaLib3_c(),this._FriendMiniLayer_Group6_c(),this._FriendMiniLayer_BriskImageDynaLib5_c()];
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0075:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0075);
      }
      
      private function _FriendMiniLayer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "friendincentive_balken_bg_links";
               if(_loc2_ || _loc3_)
               {
                  addr004b:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr005b);
            }
            §§goto(addr004b);
         }
         addr005b:
         return _loc1_;
      }
      
      private function _FriendMiniLayer_Group6_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._FriendMiniLayer_BriskImageDynaLib4_c(),this._FriendMiniLayer_TextInputCursorSave1_i()];
            if(_loc2_ || _loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0054:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0058);
            }
            §§goto(addr0054);
         }
         addr0058:
         return _loc1_;
      }
      
      private function _FriendMiniLayer_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.width = 146;
            if(!_loc2_)
            {
               _loc1_.dynaLibName = "gui_popups_FriendBook";
               §§goto(addr0036);
            }
            §§goto(addr006d);
         }
         addr0036:
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaBmpSourceName = "friendincentive_balken_bg_mitte";
            if(_loc3_)
            {
               §§goto(addr0061);
            }
            §§goto(addr006d);
         }
         addr0061:
         if(!_loc1_.document)
         {
            if(_loc3_)
            {
               addr006d:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _FriendMiniLayer_TextInputCursorSave1_i() : TextInputCursorSave
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TextInputCursorSave = new TextInputCursorSave();
         if(!_loc2_)
         {
            _loc1_.width = 140;
            if(_loc3_)
            {
               _loc1_.verticalCenter = 1;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.text = "Das ist ein langer name hier einlanger";
                     if(_loc3_)
                     {
                        _loc1_.selectable = true;
                        if(!(_loc2_ && _loc2_))
                        {
                           addr007a:
                           _loc1_.styleName = "numStepper";
                           if(_loc3_)
                           {
                              addr0085:
                              _loc1_.addEventListener("focusIn",this.__valueLabel_focusIn);
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr009f:
                                 _loc1_.id = "valueLabel";
                                 if(_loc3_)
                                 {
                                    if(!_loc1_.document)
                                    {
                                       if(_loc3_)
                                       {
                                          addr00c3:
                                          _loc1_.document = this;
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§goto(addr00d4);
                                          }
                                       }
                                       §§goto(addr00de);
                                    }
                                    §§goto(addr00d4);
                                 }
                              }
                              §§goto(addr00de);
                           }
                           §§goto(addr009f);
                        }
                        §§goto(addr0085);
                     }
                     §§goto(addr007a);
                  }
                  addr00d4:
                  this.valueLabel = _loc1_;
                  if(_loc3_)
                  {
                     addr00de:
                     BindingManager.executeBindings(this,"valueLabel",this.valueLabel);
                  }
                  return _loc1_;
               }
               §§goto(addr009f);
            }
            §§goto(addr0085);
         }
         §§goto(addr00c3);
      }
      
      public function __valueLabel_focusIn(param1:FocusEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.cleanAll();
         }
      }
      
      private function _FriendMiniLayer_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "friendincentive_balken_bg_rechts";
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr0063);
               }
               §§goto(addr006f);
            }
            addr0063:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr006f:
                  _loc1_.document = this;
               }
            }
            §§goto(addr0073);
         }
         addr0073:
         return _loc1_;
      }
      
      private function _FriendMiniLayer_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.width = 190;
            if(!_loc3_)
            {
               _loc1_.dynaLibName = "gui_popups_paperPopup";
               if(!_loc3_)
               {
                  §§goto(addr004f);
               }
               §§goto(addr006e);
            }
            addr004f:
            _loc1_.dynaBmpSourceName = "head_line";
            if(_loc2_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr006e:
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr0072);
         }
         addr0072:
         return _loc1_;
      }
      
      private function _FriendMiniLayer_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.gap = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.width = 220;
               if(!(_loc2_ && _loc2_))
               {
                  addr005a:
                  _loc1_.paddingLeft = -18;
                  if(_loc3_)
                  {
                     addr0065:
                     _loc1_.horizontalAlign = "center";
                     if(!_loc2_)
                     {
                        §§goto(addr006f);
                     }
                     §§goto(addr00b8);
                  }
                  addr006f:
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_)
                  {
                     _loc1_.mxmlContent = [this._FriendMiniLayer_Group7_c(),this._FriendMiniLayer_Group8_c(),this._FriendMiniLayer_LocaLabel2_i()];
                     if(_loc3_ || _loc2_)
                     {
                        §§goto(addr00ac);
                     }
                     §§goto(addr00b8);
                  }
                  §§goto(addr00ac);
               }
               addr00ac:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr00b8:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr0065);
         }
         §§goto(addr005a);
      }
      
      private function _FriendMiniLayer_Group7_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._FriendMiniLayer_BriskImageDynaLib7_i(),this._FriendMiniLayer_BriskImageDynaLib8_i()];
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     addr0059:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0059);
      }
      
      private function _FriendMiniLayer_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.measuredWidth = 0;
            if(!_loc3_)
            {
               _loc1_.dynaLibName = "gui_popups_FriendBook";
               if(_loc2_ || _loc2_)
               {
                  addr003c:
                  _loc1_.dynaBmpSourceName = "friendadd_fail";
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.visible = false;
                     if(_loc2_)
                     {
                        addr0064:
                        _loc1_.includeInLayout = false;
                        if(!_loc3_)
                        {
                           addr006d:
                           _loc1_.id = "failIcon";
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr0080:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr009f:
                                    _loc1_.document = this;
                                    if(_loc2_)
                                    {
                                       addr00a8:
                                       this.failIcon = _loc1_;
                                       if(!(_loc3_ && Boolean(_loc1_)))
                                       {
                                          addr00ba:
                                          BindingManager.executeBindings(this,"failIcon",this.failIcon);
                                       }
                                       §§goto(addr00c7);
                                    }
                                    §§goto(addr00ba);
                                 }
                                 addr00c7:
                                 return _loc1_;
                              }
                              §§goto(addr00a8);
                           }
                        }
                        §§goto(addr009f);
                     }
                     §§goto(addr006d);
                  }
                  §§goto(addr00a8);
               }
               §§goto(addr0080);
            }
            §§goto(addr0064);
         }
         §§goto(addr003c);
      }
      
      private function _FriendMiniLayer_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.measuredHeight = 0;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.measuredWidth = 0;
               if(_loc3_)
               {
                  addr0046:
                  _loc1_.dynaLibName = "gui_popups_paperPopup";
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0064:
                     _loc1_.dynaBmpSourceName = "checkmark_green";
                     if(_loc3_)
                     {
                        _loc1_.visible = false;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr0080:
                           _loc1_.includeInLayout = false;
                           if(!_loc2_)
                           {
                              _loc1_.id = "okIcon";
                              if(_loc3_ || _loc3_)
                              {
                                 addr009c:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_)
                                    {
                                       addr00b4:
                                       _loc1_.document = this;
                                       if(_loc3_ || Boolean(_loc1_))
                                       {
                                          §§goto(addr00c5);
                                       }
                                    }
                                    §§goto(addr00cf);
                                 }
                                 addr00c5:
                                 this.okIcon = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr00cf:
                                    BindingManager.executeBindings(this,"okIcon",this.okIcon);
                                 }
                                 §§goto(addr00dc);
                              }
                              addr00dc:
                              return _loc1_;
                           }
                           §§goto(addr00c5);
                        }
                        §§goto(addr00b4);
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0064);
            }
            §§goto(addr0046);
         }
         §§goto(addr0064);
      }
      
      private function _FriendMiniLayer_Group8_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.width = 10;
            if(!(_loc2_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0050:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0050);
      }
      
      private function _FriendMiniLayer_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.styleName = "friendInviteMiniLayer";
            if(!_loc3_)
            {
               _loc1_.maxWidth = 150;
               if(!_loc3_)
               {
                  _loc1_.maxHeight = 30;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr0092);
               }
               §§goto(addr009c);
            }
            addr0056:
            _loc1_.id = "serverResponseLocaLabel";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     addr0081:
                     _loc1_.document = this;
                     if(_loc2_ || _loc2_)
                     {
                        §§goto(addr0092);
                     }
                     §§goto(addr009c);
                  }
               }
               addr0092:
               this.serverResponseLocaLabel = _loc1_;
               if(!_loc3_)
               {
                  addr009c:
                  BindingManager.executeBindings(this,"serverResponseLocaLabel",this.serverResponseLocaLabel);
               }
               §§goto(addr00a9);
            }
            addr00a9:
            return _loc1_;
         }
         §§goto(addr0081);
      }
      
      private function _FriendMiniLayer_Group9_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.height = 4;
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0040:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0040);
      }
      
      private function _FriendMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_ || _loc3_)
         {
            _loc1_.width = 204;
            if(_loc3_ || _loc2_)
            {
               _loc1_.imageNameLeft = "button_icon_checkmark";
               if(!_loc2_)
               {
                  _loc1_.libNameLeft = "gui_popups_FriendBook";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0069:
                     _loc1_.id = "inviteButton";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0088:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0094:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr009d:
                                 this.inviteButton = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr00a7:
                                    BindingManager.executeBindings(this,"inviteButton",this.inviteButton);
                                 }
                                 §§goto(addr00b4);
                              }
                              §§goto(addr00a7);
                           }
                           addr00b4:
                           return _loc1_;
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0069);
            }
            §§goto(addr0094);
         }
         §§goto(addr0069);
      }
      
      [Bindable(event="propertyChange")]
      public function get failIcon() : BriskImageDynaLib
      {
         return this._674613431failIcon;
      }
      
      public function set failIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._674613431failIcon;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr0035:
                  this._674613431failIcon = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr003f);
                  }
                  §§goto(addr004f);
               }
               addr003f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr004f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"failIcon",_loc2_,param1));
                  }
               }
               §§goto(addr005e);
            }
            addr005e:
            return;
         }
         §§goto(addr0035);
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
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._800887486flavourText = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inviteButton() : MultistateButton
      {
         return this._198043749inviteButton;
      }
      
      public function set inviteButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._198043749inviteButton;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._198043749inviteButton = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0065:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr007d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inviteButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr008c);
                  }
               }
               §§goto(addr007d);
            }
            addr008c:
            return;
         }
         §§goto(addr0065);
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
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._273241018mainGroup = param1;
                  if(!_loc4_)
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
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
      public function get okIcon() : BriskImageDynaLib
      {
         return this._1016041355okIcon;
      }
      
      public function set okIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1016041355okIcon;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr004f:
                  this._1016041355okIcon = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"okIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0077);
                  }
               }
               §§goto(addr0068);
            }
            addr0077:
            return;
         }
         §§goto(addr004f);
      }
      
      [Bindable(event="propertyChange")]
      public function get serverResponseLocaLabel() : LocaLabel
      {
         return this._1556596209serverResponseLocaLabel;
      }
      
      public function set serverResponseLocaLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1556596209serverResponseLocaLabel;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._1556596209serverResponseLocaLabel = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"serverResponseLocaLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
               }
               §§goto(addr0076);
            }
         }
         addr0085:
      }
      
      [Bindable(event="propertyChange")]
      public function get valueLabel() : TextInputCursorSave
      {
         return this._2025208835valueLabel;
      }
      
      public function set valueLabel(param1:TextInputCursorSave) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2025208835valueLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._2025208835valueLabel = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"valueLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0077);
            }
            addr0086:
            return;
         }
         §§goto(addr0077);
      }
   }
}

