package net.bigpoint.cityrama.view.friendBook.ui.components.tabsContent
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.friends.vo.CenterItemFriendDataVo;
   import net.bigpoint.cityrama.model.friends.vo.FriendVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PostitHeaderComponent;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendDetailsCenterComponent;
   import net.bigpoint.cityrama.view.friendBook.ui.event.Friend_Action_Event;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class FriendTemplateDetailview extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _FriendTemplateDetailview_LocaLabel4:LocaLabel;
      
      public var _FriendTemplateDetailview_LocaLabel6:LocaLabel;
      
      public var _FriendTemplateDetailview_LocaLabel8:LocaLabel;
      
      private var _1480909402acceptButton:MultistateButton;
      
      private var _1781625235buttonGroup:VGroup;
      
      private var _1364013995center:FriendDetailsCenterComponent;
      
      private var _1649846058centerGroup:VGroup;
      
      private var _490397341effectsGroup:VGroup;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _1594450399giftingHeader:PostitHeaderComponent;
      
      private var _1115058732headline:LocaLabel;
      
      private var _1725723944informationLabel:LocaLabel;
      
      private var _1556642751lastLoginLabel:LocaLabel;
      
      private var _336957564registeredDateLabel:LocaLabel;
      
      private var _1819087793rejectButton:MultistateButton;
      
      private var _326024711subHeaderLabel:LocaLabel;
      
      private var _781541034toalingameTimeLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:FriendVo;
      
      private var _dirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function FriendTemplateDetailview()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc3_ && _loc1_))
         {
            §§push(null);
            if(!(_loc3_ && _loc2_))
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(!(_loc3_ && _loc1_))
                  {
                     addr0051:
                     §§pop().§§slot[5] = null;
                     addr0050:
                     if(!(_loc3_ && Boolean(this)))
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc4_ || Boolean(this))
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc4_)
                           {
                              addr0082:
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc4_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc4_)
                                 {
                                    super();
                                    if(_loc4_)
                                    {
                                       mx_internal::_document = this;
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          §§push(§§newactivation());
                                          if(_loc4_ || _loc1_)
                                          {
                                             addr00cd:
                                             §§pop().§§slot[1] = this._FriendTemplateDetailview_bindingsSetup();
                                             if(_loc4_)
                                             {
                                                §§push(§§newactivation());
                                                if(!_loc3_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      addr00f7:
                                                      §§push(§§newactivation());
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc4_ || Boolean(this))
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  addr012e:
                                                                  §§push(§§newactivation());
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_friendBook_ui_components_tabsContent_FriendTemplateDetailviewWatcherSetupUtil");
                                                                     if(_loc4_)
                                                                     {
                                                                        addr0153:
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_)
                                                                        {
                                                                           addr015b:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc4_)
                                                                           {
                                                                              addr0172:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return FriendTemplateDetailview[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc4_)
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr01e5:
                                                                                       this.percentWidth = 100;
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr01f0:
                                                                                          this.percentHeight = 100;
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr01fb:
                                                                                             this.mxmlContent = [this._FriendTemplateDetailview_VGroup1_c()];
                                                                                             if(_loc4_ || _loc2_)
                                                                                             {
                                                                                                addr0214:
                                                                                                this.addEventListener("creationComplete",this.___FriendTemplateDetailview_Group1_creationComplete);
                                                                                                if(!(_loc3_ && _loc1_))
                                                                                                {
                                                                                                   addr022f:
                                                                                                   i = 0;
                                                                                                   addr022d:
                                                                                                }
                                                                                                var _temp_17:*;
                                                                                                loop0:
                                                                                                do
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   loop1:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().§§slot[4]);
                                                                                                      loop2:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§newactivation());
                                                                                                         while(§§pop() < §§pop().§§slot[1].length)
                                                                                                         {
                                                                                                            Binding(bindings[i]).execute();
                                                                                                            if(!(_loc4_ || _loc3_))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(§§newactivation());
                                                                                                            if(_loc4_ || _loc1_)
                                                                                                            {
                                                                                                               §§push(§§pop().§§slot[4]);
                                                                                                               if(!(_loc3_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(uint(§§pop() + 1));
                                                                                                                  if(!(_loc4_ || _loc3_))
                                                                                                                  {
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               continue;
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                while(var _temp_17:* = §§pop(), §§pop().§§slot[4] = _temp_17, _loc4_ || _loc1_);
                                                                                                
                                                                                                return;
                                                                                                addr02ac:
                                                                                             }
                                                                                             §§goto(addr022d);
                                                                                          }
                                                                                          §§goto(addr0214);
                                                                                       }
                                                                                       §§goto(addr022d);
                                                                                    }
                                                                                    §§goto(addr01f0);
                                                                                 }
                                                                              }
                                                                              §§goto(addr01e5);
                                                                           }
                                                                           §§goto(addr0214);
                                                                        }
                                                                        §§goto(addr022f);
                                                                     }
                                                                     §§goto(addr0214);
                                                                  }
                                                                  §§goto(addr015b);
                                                               }
                                                               §§goto(addr01fb);
                                                            }
                                                            §§goto(addr0172);
                                                         }
                                                         §§goto(addr0153);
                                                      }
                                                      §§goto(addr022f);
                                                   }
                                                   §§goto(addr01f0);
                                                }
                                                §§goto(addr015b);
                                             }
                                             §§goto(addr01e5);
                                          }
                                          §§goto(addr015b);
                                       }
                                       §§goto(addr02ac);
                                    }
                                    §§goto(addr022d);
                                 }
                                 §§goto(addr02ac);
                              }
                              §§goto(addr00f7);
                           }
                        }
                        §§goto(addr012e);
                     }
                     §§goto(addr0214);
                  }
                  §§goto(addr00cd);
               }
               §§goto(addr0082);
            }
            §§goto(addr0051);
         }
         §§goto(addr0050);
      }
      
      private static function getFormatedDateString(param1:Number, param2:String) : String
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = NaN;
         if(_loc4_ || Boolean(param2))
         {
            §§push(param1);
            if(_loc4_ || Boolean(param2))
            {
               §§push(60000);
               if(_loc4_ || FriendTemplateDetailview)
               {
                  §§push(60);
                  if(_loc4_ || Boolean(param1))
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc4_)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(!(_loc5_ && FriendTemplateDetailview))
                           {
                              §§push(Math.floor(param1 / 60000));
                              if(!_loc5_)
                              {
                                 _loc3_ = §§pop();
                                 if(!_loc5_)
                                 {
                                    §§push(LocaUtils);
                                    §§push("rcl.booklayer.friendbook");
                                    §§push("rcl.booklayer.friendbook.");
                                    if(!(_loc5_ && Boolean(param2)))
                                    {
                                       §§push(§§pop() + param2);
                                       if(!(_loc5_ && Boolean(param1)))
                                       {
                                          addr00ad:
                                          §§push(§§pop() + "Minutes");
                                       }
                                       §§push(§§pop().getString(§§pop(),§§pop(),[_loc3_]));
                                       if(!(_loc5_ && Boolean(param2)))
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr04f0);
                                    }
                                    §§goto(addr00ad);
                                 }
                                 else
                                 {
                                    addr01f1:
                                    §§push(LocaUtils);
                                    §§push("rcl.booklayer.friendbook");
                                    §§push("rcl.booklayer.friendbook.");
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() + param2);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() + "Days");
                                       }
                                    }
                                    §§push(§§pop().getString(§§pop(),§§pop(),[_loc3_]));
                                    if(_loc4_ || Boolean(param2))
                                    {
                                       §§goto(addr0220);
                                    }
                                 }
                              }
                              else
                              {
                                 addr023e:
                                 §§push(60000);
                                 if(!_loc5_)
                                 {
                                    addr0246:
                                    §§push(60);
                                    if(_loc4_ || Boolean(param1))
                                    {
                                       addr0256:
                                       §§push(§§pop() * §§pop());
                                       if(_loc4_ || Boolean(_loc3_))
                                       {
                                          §§push(24);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc4_)
                                             {
                                                §§push(7);
                                                if(!(_loc5_ && FriendTemplateDetailview))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc5_)
                                                   {
                                                      §§push(4);
                                                      if(_loc4_ || Boolean(param1))
                                                      {
                                                         addr02a8:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc4_)
                                                         {
                                                            addr02af:
                                                            if(§§pop() < §§pop())
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§push(Math.floor(param1 / (60000 * 60 * 24 * 7)));
                                                                  if(_loc4_ || FriendTemplateDetailview)
                                                                  {
                                                                     addr02db:
                                                                     _loc3_ = §§pop();
                                                                     if(!(_loc5_ && Boolean(param1)))
                                                                     {
                                                                        addr02ea:
                                                                        §§push(LocaUtils);
                                                                        §§push("rcl.booklayer.friendbook");
                                                                        §§push("rcl.booklayer.friendbook.");
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(§§pop() + param2);
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr0300:
                                                                              §§push(§§pop() + "Weeks");
                                                                           }
                                                                           §§push(§§pop().getString(§§pop(),§§pop(),[_loc3_]));
                                                                           if(_loc4_ || Boolean(_loc3_))
                                                                           {
                                                                              return §§pop();
                                                                           }
                                                                           §§goto(addr0407);
                                                                        }
                                                                        §§goto(addr0300);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr041d:
                                                                     addr0421:
                                                                     addr041f:
                                                                     §§push(60000 * 60);
                                                                     if(!(_loc5_ && Boolean(param2)))
                                                                     {
                                                                        addr0430:
                                                                        §§push(24);
                                                                        if(_loc4_ || FriendTemplateDetailview)
                                                                        {
                                                                           addr0440:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr0447:
                                                                              §§push(7);
                                                                              if(_loc4_ || FriendTemplateDetailview)
                                                                              {
                                                                                 addr0457:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc4_ || Boolean(_loc3_))
                                                                                 {
                                                                                    addr0466:
                                                                                    §§push(4);
                                                                                    if(!(_loc5_ && Boolean(_loc3_)))
                                                                                    {
                                                                                       §§goto(addr0480);
                                                                                    }
                                                                                    §§goto(addr047f);
                                                                                 }
                                                                                 §§goto(addr0480);
                                                                              }
                                                                              §§goto(addr047f);
                                                                           }
                                                                           addr0480:
                                                                           addr0476:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr047f:
                                                                              §§push(§§pop() * 12);
                                                                           }
                                                                           if(§§pop() >= §§pop())
                                                                           {
                                                                              if(!(_loc5_ && Boolean(param2)))
                                                                              {
                                                                                 addr04ac:
                                                                                 _loc3_ = Math.floor(param1 / (60000 * 60 * 24 * 7 * 4 * 12));
                                                                                 addr0492:
                                                                                 if(!(_loc4_ || Boolean(param2)))
                                                                                 {
                                                                                    §§goto(addr04f1);
                                                                                 }
                                                                              }
                                                                              addr04c7:
                                                                              §§push(LocaUtils);
                                                                              §§push("rcl.booklayer.friendbook");
                                                                              §§push("rcl.booklayer.friendbook.");
                                                                              if(!(_loc5_ && Boolean(param1)))
                                                                              {
                                                                                 §§push(§§pop() + param2);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(§§pop() + "Years");
                                                                                 }
                                                                              }
                                                                              addr04f0:
                                                                              return §§pop();
                                                                              §§push(§§pop().getString(§§pop(),§§pop(),[_loc3_]));
                                                                           }
                                                                           §§goto(addr04f1);
                                                                        }
                                                                        §§goto(addr047f);
                                                                     }
                                                                     §§goto(addr0466);
                                                                  }
                                                               }
                                                               §§goto(addr04c7);
                                                            }
                                                            else
                                                            {
                                                               §§push(param1);
                                                               if(_loc4_ || Boolean(param2))
                                                               {
                                                                  addr0337:
                                                                  §§push(60000);
                                                                  if(!(_loc5_ && Boolean(param1)))
                                                                  {
                                                                     addr0347:
                                                                     §§push(60);
                                                                     if(_loc4_)
                                                                     {
                                                                        addr034f:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc5_ && FriendTemplateDetailview))
                                                                        {
                                                                           §§push(24);
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(7);
                                                                                 if(_loc4_ || Boolean(param1))
                                                                                 {
                                                                                    addr037d:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(4);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc5_ && FriendTemplateDetailview))
                                                                                          {
                                                                                             addr039b:
                                                                                             §§push(12);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                addr03a3:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr03aa:
                                                                                                   if(§§pop() < §§pop())
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         §§push(Math.floor(param1 / (60000 * 60 * 24 * 7 * 4)));
                                                                                                         if(_loc4_ || Boolean(param2))
                                                                                                         {
                                                                                                            addr03d9:
                                                                                                            _loc3_ = §§pop();
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               addr03e0:
                                                                                                               §§push(LocaUtils);
                                                                                                               §§push("rcl.booklayer.friendbook");
                                                                                                               §§push("rcl.booklayer.friendbook.");
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + param2);
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     addr03f6:
                                                                                                                     §§push(§§pop() + "Months");
                                                                                                                  }
                                                                                                                  §§push(§§pop().getString(§§pop(),§§pop(),[_loc3_]));
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     addr0407:
                                                                                                                     return §§pop();
                                                                                                                  }
                                                                                                                  §§goto(addr04f0);
                                                                                                               }
                                                                                                               §§goto(addr03f6);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr0416:
                                                                                                               §§push(param1);
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  §§goto(addr041d);
                                                                                                               }
                                                                                                               §§goto(addr04ac);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr041d);
                                                                                                      }
                                                                                                      addr04f1:
                                                                                                      return "";
                                                                                                   }
                                                                                                   §§goto(addr0416);
                                                                                                }
                                                                                                §§goto(addr0430);
                                                                                             }
                                                                                             §§goto(addr0476);
                                                                                          }
                                                                                          §§goto(addr0447);
                                                                                       }
                                                                                       §§goto(addr0457);
                                                                                    }
                                                                                    §§goto(addr03aa);
                                                                                 }
                                                                                 §§goto(addr0457);
                                                                              }
                                                                              §§goto(addr0430);
                                                                           }
                                                                           §§goto(addr037d);
                                                                        }
                                                                        §§goto(addr0480);
                                                                     }
                                                                     §§goto(addr0421);
                                                                  }
                                                                  §§goto(addr041f);
                                                               }
                                                            }
                                                            §§goto(addr041d);
                                                         }
                                                         §§goto(addr0480);
                                                      }
                                                      §§goto(addr047f);
                                                   }
                                                   §§goto(addr0447);
                                                }
                                                §§goto(addr02a8);
                                             }
                                             §§goto(addr039b);
                                          }
                                          §§goto(addr0457);
                                       }
                                       §§goto(addr03aa);
                                    }
                                    §§goto(addr034f);
                                 }
                                 §§goto(addr0347);
                              }
                              §§goto(addr04f0);
                           }
                           §§goto(addr03e0);
                        }
                        else
                        {
                           §§push(param1);
                           if(!(_loc5_ && FriendTemplateDetailview))
                           {
                              §§push(60000);
                              if(_loc4_)
                              {
                                 §§push(60);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc4_)
                                    {
                                       §§push(24);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc5_ && Boolean(param1)))
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§push(Math.floor(param1 / (60000 * 60)));
                                                   if(!(_loc5_ && FriendTemplateDetailview))
                                                   {
                                                      §§goto(addr0138);
                                                   }
                                                   §§goto(addr02db);
                                                }
                                             }
                                             §§goto(addr016d);
                                          }
                                          §§goto(addr0193);
                                       }
                                       §§goto(addr047f);
                                    }
                                    §§goto(addr02af);
                                 }
                                 §§goto(addr0256);
                              }
                              §§goto(addr0246);
                           }
                        }
                        §§goto(addr0337);
                     }
                     §§goto(addr01b9);
                  }
                  §§goto(addr034f);
               }
               §§goto(addr0184);
            }
            addr0138:
            _loc3_ = §§pop();
            if(_loc4_)
            {
               §§push(LocaUtils);
               §§push("rcl.booklayer.friendbook");
               §§push("rcl.booklayer.friendbook.");
               if(_loc4_)
               {
                  §§push(§§pop() + param2);
                  if(_loc4_)
                  {
                     addr0155:
                     §§push(§§pop() + "Houres");
                  }
                  §§push(§§pop().getString(§§pop(),§§pop(),[_loc3_]));
                  if(_loc4_)
                  {
                     return §§pop();
                  }
                  §§goto(addr0220);
               }
               §§goto(addr0155);
            }
            else
            {
               addr016d:
               §§push(param1);
               if(_loc4_)
               {
                  §§push(60000);
                  if(!(_loc5_ && Boolean(_loc3_)))
                  {
                     addr0184:
                     §§push(60);
                     if(_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc4_)
                        {
                           addr0193:
                           §§push(24);
                           if(!_loc5_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc4_)
                              {
                                 §§push(7);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc4_ || Boolean(param1))
                                    {
                                       addr01b9:
                                       if(§§pop() < §§pop())
                                       {
                                          if(!(_loc5_ && Boolean(_loc3_)))
                                          {
                                             §§push(Math.floor(param1 / (60000 * 60 * 24)));
                                             if(_loc4_)
                                             {
                                                _loc3_ = §§pop();
                                                if(!(_loc5_ && FriendTemplateDetailview))
                                                {
                                                   §§goto(addr01f1);
                                                }
                                                else
                                                {
                                                   §§goto(addr02ea);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr03d9);
                                             }
                                             §§goto(addr04f0);
                                          }
                                          §§goto(addr0492);
                                       }
                                       else
                                       {
                                          §§push(param1);
                                          if(!(_loc5_ && Boolean(_loc3_)))
                                          {
                                             §§goto(addr023e);
                                          }
                                       }
                                       §§goto(addr041d);
                                    }
                                    §§goto(addr039b);
                                 }
                                 §§goto(addr0440);
                              }
                              §§goto(addr039b);
                           }
                           §§goto(addr03a3);
                        }
                        §§goto(addr02af);
                     }
                     §§goto(addr0256);
                  }
                  §§goto(addr0246);
               }
               §§goto(addr041d);
            }
            return §§pop();
         }
         §§goto(addr04c7);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            FriendTemplateDetailview._watcherSetupUtil = param1;
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
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     §§goto(addr0041);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         addr0041:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.informationLabel.text = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.invitePlayerInformation");
            if(!(_loc3_ && Boolean(param1)))
            {
               this.headline.text = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.invitePlayerDetails");
               if(!(_loc3_ && _loc3_))
               {
                  this.flavorText.text = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.invite_flavor");
                  if(!(_loc3_ && _loc2_))
                  {
                     this.giftingHeader.text = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.inviteGifting");
                     if(_loc2_)
                     {
                        this.subHeaderLabel.text = LocaUtils.getString("rcl.booklayer.treasury","rcl.booklayer.treasury.comingsoon");
                        if(_loc2_)
                        {
                           §§push(this.acceptButton);
                           if(_loc2_)
                           {
                              §§push(LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.invitePendingButtonAccept"));
                              if(_loc2_ || Boolean(param1))
                              {
                                 §§pop().label = §§pop();
                                 if(!_loc3_)
                                 {
                                    §§push(this.rejectButton);
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       §§push(LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.invitePendingButtonReject"));
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          §§pop().label = §§pop();
                                          if(_loc2_)
                                          {
                                             addr0122:
                                             this.acceptButton.toolTip = LocaUtils.getString("rcl.tooltips.friendlist","rcl.tooltips.friendlist.frienddetail.accept");
                                             addr0116:
                                             addr0112:
                                             if(_loc2_ || _loc2_)
                                             {
                                                addr014c:
                                                this.rejectButton.toolTip = LocaUtils.getString("rcl.tooltips.friendlist","rcl.tooltips.friendlist.frienddetail.decline");
                                                §§goto(addr013c);
                                             }
                                             §§goto(addr015b);
                                          }
                                          addr013c:
                                          §§goto(addr0140);
                                       }
                                       §§goto(addr014c);
                                    }
                                    addr0140:
                                    if(_loc2_ || Boolean(param1))
                                    {
                                       addr015b:
                                       this.setupCenter();
                                       if(!_loc3_)
                                       {
                                          addr0166:
                                          this.updateAll();
                                       }
                                    }
                                    §§goto(addr016b);
                                 }
                                 §§goto(addr0166);
                              }
                              §§goto(addr0122);
                           }
                           §§goto(addr0116);
                        }
                        §§goto(addr0112);
                     }
                  }
                  addr016b:
                  return;
               }
               §§goto(addr015b);
            }
            §§goto(addr0166);
         }
         §§goto(addr0112);
      }
      
      public function setData(param1:FriendVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            if(RandomUtilities.isUnEqual(this._data,param1))
            {
               if(_loc3_ || Boolean(this))
               {
                  this._data = param1;
                  if(_loc3_)
                  {
                     this._dirty = true;
                     if(_loc3_ || Boolean(param1))
                     {
                        addr005b:
                        if(this._data.status == FriendVo.PENDING)
                        {
                           if(_loc3_)
                           {
                              §§push(this.flavorText);
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.inviteDetailPending_flavor"));
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§pop().text = §§pop();
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr00b7:
                                       this.buttonGroup.visible = true;
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          this.centerGroup.verticalAlign = "top";
                                          if(!_loc2_)
                                          {
                                             addr0133:
                                             invalidateProperties();
                                          }
                                       }
                                       else
                                       {
                                          addr011d:
                                          this.centerGroup.verticalAlign = "middle";
                                          if(_loc3_ || Boolean(this))
                                          {
                                             §§goto(addr0133);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       this.buttonGroup.visible = false;
                                       addr00fb:
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§goto(addr011d);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr00ec:
                                    §§pop().text = §§pop();
                                    if(!(_loc2_ && Boolean(param1)))
                                    {
                                       §§goto(addr00fb);
                                    }
                                 }
                                 §§goto(addr0138);
                              }
                              else
                              {
                                 addr00e0:
                                 §§push(LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.inviteDetail_flavor"));
                              }
                              §§goto(addr00ec);
                           }
                           §§goto(addr00b7);
                        }
                        else
                        {
                           §§push(this.flavorText);
                        }
                        §§goto(addr00e0);
                     }
                  }
                  §§goto(addr0133);
               }
               §§goto(addr005b);
            }
            addr0138:
            return;
         }
         §§goto(addr005b);
      }
      
      private function updateAll() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            this.setTooltips();
         }
      }
      
      public function get data() : FriendVo
      {
         return this._data;
      }
      
      private function setTooltips() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this.center);
            if(_loc1_ || _loc1_)
            {
               §§push("tooltipLeftScroll");
               if(_loc1_ || _loc1_)
               {
                  §§push(LocaUtils.getString("rcl.tooltips.friendlist","rcl.tooltips.friendlist.pending.previous"));
                  if(!(_loc2_ && _loc1_))
                  {
                     §§pop().setStyle(§§pop(),§§pop());
                     if(_loc1_ || _loc2_)
                     {
                        addr008e:
                        this.center.setStyle("tooltipRightScroll",LocaUtils.getString("rcl.tooltips.friendlist","rcl.tooltips.friendlist.pending.next"));
                        addr0082:
                        addr007f:
                        addr007b:
                     }
                     return;
                  }
                  §§goto(addr008e);
               }
               §§goto(addr0082);
            }
            §§goto(addr007f);
         }
         §§goto(addr007b);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Date = null;
         if(!_loc3_)
         {
            super.commitProperties();
            if(_loc2_ || _loc2_)
            {
               §§push(this._dirty);
               if(_loc2_)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     var _temp_2:* = §§pop();
                     §§push(_temp_2);
                     if(_temp_2)
                     {
                        if(_loc2_)
                        {
                           addr0046:
                           §§pop();
                           if(_loc2_)
                           {
                              §§goto(addr0051);
                           }
                           §§goto(addr0055);
                        }
                     }
                     addr0051:
                     §§goto(addr004c);
                  }
               }
               §§goto(addr0046);
            }
            §§goto(addr0055);
         }
         addr004c:
         if(Boolean(this._data))
         {
            addr0055:
            _loc1_ = new Date();
            if(_loc2_ || _loc2_)
            {
               this.registeredDateLabel.text = getFormatedDateString(_loc1_.time - this._data.accountCreatedDate * 1000,"playerInfoRegisteredDate");
               if(_loc2_ || Boolean(this))
               {
                  this.lastLoginLabel.text = getFormatedDateString(_loc1_.time - this._data.lastLoginDate * 1000,"playerInfoLastLoginDate");
                  if(_loc2_ || Boolean(this))
                  {
                     addr00d4:
                     §§push(this.toalingameTimeLabel);
                     §§push(§§findproperty(getFormatedDateString));
                     §§push(this._data.lastLoginDate);
                     if(!_loc3_)
                     {
                        §§push(§§pop() * 1000);
                        if(!(_loc3_ && _loc3_))
                        {
                           addr00f8:
                           §§push(this._data.accountCreatedDate);
                           if(_loc2_)
                           {
                              §§push(§§pop() * 1000);
                           }
                           §§push(§§pop() - §§pop());
                        }
                        §§pop().text = §§pop().getFormatedDateString(§§pop(),"playerInfoTotalDate");
                        if(_loc2_)
                        {
                           addr0125:
                           this.setupCenter();
                           if(!_loc3_)
                           {
                              this.setTooltips();
                              if(_loc2_)
                              {
                                 addr013a:
                                 this.updateAll();
                                 if(!_loc3_)
                                 {
                                    addr0144:
                                    this._dirty = false;
                                 }
                              }
                              §§goto(addr0149);
                           }
                           §§goto(addr013a);
                        }
                        §§goto(addr0144);
                     }
                     §§goto(addr00f8);
                  }
                  §§goto(addr013a);
               }
               §§goto(addr0125);
            }
            §§goto(addr00d4);
         }
         addr0149:
      }
      
      private function acceptEvent() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Friend_Action_Event = new Friend_Action_Event(Friend_Action_Event.ACCEPT_FRIEND_EVENT,true);
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.friendVo = this.center.centerItem.data as FriendVo;
            if(!_loc3_)
            {
               §§goto(addr0047);
            }
            §§goto(addr00ae);
         }
         addr0047:
         dispatchEvent(_loc1_);
         if(_loc2_)
         {
            this._data.status = FriendVo.FINISHED;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               this.buttonGroup.visible = false;
               if(!_loc3_)
               {
                  this.flavorText.text = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.invite_flavor");
                  addr0083:
                  if(!(_loc3_ && _loc3_))
                  {
                     addr00ae:
                     this.buttonGroup.visible = false;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr00c2:
                        this.centerGroup.verticalAlign = "middle";
                     }
                     §§goto(addr00cb);
                  }
                  §§goto(addr00c2);
               }
               §§goto(addr00cb);
            }
            §§goto(addr0083);
         }
         addr00cb:
      }
      
      private function rejectEvent() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Friend_Action_Event = new Friend_Action_Event(Friend_Action_Event.REJECT_FRIEND_EVENT,true);
         if(_loc3_)
         {
            _loc1_.friendVo = this.center.centerItem.data as FriendVo;
            if(_loc3_ || _loc3_)
            {
               dispatchEvent(_loc1_);
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0066:
                  this._data.status = FriendVo.FINISHED;
                  if(!_loc2_)
                  {
                     this.buttonGroup.visible = false;
                     if(_loc3_)
                     {
                        this.flavorText.text = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.invite_flavor");
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr00ac:
                           this.buttonGroup.visible = false;
                           if(_loc3_)
                           {
                              this.centerGroup.verticalAlign = "middle";
                           }
                        }
                     }
                     return;
                  }
               }
               §§goto(addr00ac);
            }
            §§goto(addr0066);
         }
         §§goto(addr00ac);
      }
      
      private function setupCenter() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CenterItemFriendDataVo = new CenterItemFriendDataVo();
         if(_loc3_ || _loc3_)
         {
            _loc1_.friendVO = this._data;
            if(_loc3_)
            {
               _loc1_.showButton = true;
               if(_loc3_)
               {
                  _loc1_.buyEnabled = true;
                  if(_loc3_ || _loc2_)
                  {
                     this.center.data = _loc1_;
                  }
               }
            }
         }
      }
      
      private function _FriendTemplateDetailview_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.left = -10;
            if(!_loc3_)
            {
               _loc1_.right = 30;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.percentHeight = 100;
                  if(_loc2_)
                  {
                     _loc1_.verticalAlign = "top";
                     if(!_loc3_)
                     {
                        _loc1_.horizontalAlign = "center";
                        if(!_loc3_)
                        {
                           addr0076:
                           _loc1_.mxmlContent = [this._FriendTemplateDetailview_LocaLabel1_i(),this._FriendTemplateDetailview_HGroup1_c()];
                           if(_loc2_ || _loc2_)
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
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr0076);
                  }
               }
               addr00a4:
               return _loc1_;
            }
            §§goto(addr0094);
         }
         §§goto(addr00a0);
      }
      
      private function _FriendTemplateDetailview_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.width = 600;
            if(_loc2_)
            {
               _loc1_.styleName = "flavorText";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(!_loc3_)
                  {
                     _loc1_.id = "flavorText";
                     if(_loc2_)
                     {
                        addr005f:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0077:
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 §§goto(addr0088);
                              }
                           }
                           §§goto(addr0092);
                        }
                        addr0088:
                        this.flavorText = _loc1_;
                        if(_loc2_)
                        {
                           addr0092:
                           BindingManager.executeBindings(this,"flavorText",this.flavorText);
                        }
                        §§goto(addr009f);
                     }
                     §§goto(addr0092);
                  }
               }
               §§goto(addr0077);
            }
            addr009f:
            return _loc1_;
         }
         §§goto(addr005f);
      }
      
      private function _FriendTemplateDetailview_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_ || Boolean(this))
                  {
                     addr0055:
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_)
                     {
                        _loc1_.mxmlContent = [this._FriendTemplateDetailview_VGroup2_c(),this._FriendTemplateDetailview_VGroup5_i(),this._FriendTemplateDetailview_VGroup7_i()];
                        addr005f:
                        if(_loc3_ || _loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr009c:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr009c);
                  }
                  addr00a0:
                  return _loc1_;
               }
               §§goto(addr005f);
            }
            §§goto(addr009c);
         }
         §§goto(addr0055);
      }
      
      private function _FriendTemplateDetailview_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.width = 240;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.height = 300;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.left = 0;
                  if(_loc2_ || _loc2_)
                  {
                     addr006c:
                     _loc1_.bottom = 25;
                     if(_loc2_)
                     {
                        _loc1_.verticalAlign = "middle";
                        if(_loc2_)
                        {
                           addr008d:
                           _loc1_.mxmlContent = [this._FriendTemplateDetailview_Group2_c()];
                           if(_loc2_)
                           {
                              §§goto(addr009d);
                           }
                           §§goto(addr00b1);
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr008d);
                  }
               }
               addr009d:
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc3_)
                  {
                     addr00b1:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr006c);
         }
         §§goto(addr008d);
      }
      
      private function _FriendTemplateDetailview_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._FriendTemplateDetailview_BriskImageDynaLib1_c(),this._FriendTemplateDetailview_VGroup3_c(),this._FriendTemplateDetailview_BriskMCDynaLib1_c()];
            if(!(_loc2_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "quadrillepaper_informations";
               if(!_loc3_)
               {
                  §§goto(addr0047);
               }
            }
            §§goto(addr0053);
         }
         addr0047:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr0053:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.paddingLeft = 18;
            if(_loc2_ || _loc3_)
            {
               addr0039:
               _loc1_.paddingTop = 6;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_)
                  {
                     addr0061:
                     _loc1_.gap = 2;
                     if(_loc2_)
                     {
                        _loc1_.width = 204;
                        if(!_loc3_)
                        {
                           _loc1_.percentHeight = 100;
                           if(_loc2_)
                           {
                              _loc1_.mxmlContent = [this._FriendTemplateDetailview_Group3_c(),this._FriendTemplateDetailview_LocaLabel2_i(),this._FriendTemplateDetailview_LocaLabel3_i(),this._FriendTemplateDetailview_BriskImageDynaLib2_c(),this._FriendTemplateDetailview_Group4_c(),this._FriendTemplateDetailview_VGroup4_c()];
                              if(!_loc3_)
                              {
                                 §§goto(addr00bb);
                              }
                           }
                        }
                        §§goto(addr00cf);
                     }
                     addr00bb:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr00cf:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr00d3);
               }
               §§goto(addr0061);
            }
            addr00d3:
            return _loc1_;
         }
         §§goto(addr0039);
      }
      
      private function _FriendTemplateDetailview_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.height = 16;
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr004a:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr004e);
            }
            §§goto(addr004a);
         }
         addr004e:
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.maxDisplayedLines = 1;
            if(!_loc3_)
            {
               _loc1_.styleName = "friendPaperSubHeadlineSmall";
               if(_loc2_)
               {
                  addr003f:
                  _loc1_.text = "HEADLINE";
                  if(!_loc3_)
                  {
                     _loc1_.setStyle("paddingBottom",4);
                     if(!_loc3_)
                     {
                        _loc1_.id = "informationLabel";
                        if(!(_loc3_ && _loc3_))
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr00a3:
                                    this.informationLabel = _loc1_;
                                    if(!_loc3_)
                                    {
                                       addr00ad:
                                       BindingManager.executeBindings(this,"informationLabel",this.informationLabel);
                                    }
                                 }
                                 §§goto(addr00ba);
                              }
                           }
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr00ad);
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr00ad);
            }
            addr00ba:
            return _loc1_;
         }
         §§goto(addr003f);
      }
      
      private function _FriendTemplateDetailview_LocaLabel3_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.maxDisplayedLines = 1;
            if(_loc2_)
            {
               _loc1_.styleName = "friendPaperHeadline";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.text = "Headline";
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.id = "headline";
                     if(!_loc3_)
                     {
                        addr006f:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              addr008f:
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr0098:
                                 this.headline = _loc1_;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr00aa:
                                    BindingManager.executeBindings(this,"headline",this.headline);
                                 }
                                 §§goto(addr00b7);
                              }
                              §§goto(addr00aa);
                           }
                           §§goto(addr00b7);
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr0098);
               }
               §§goto(addr008f);
            }
            §§goto(addr006f);
         }
         addr00b7:
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.width = 190;
            if(_loc2_ || Boolean(_loc1_))
            {
               addr0044:
               _loc1_.dynaLibName = "gui_popups_paperPopup";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.dynaBmpSourceName = "head_line";
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0081:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0081);
            }
            addr0085:
            return _loc1_;
         }
         §§goto(addr0044);
      }
      
      private function _FriendTemplateDetailview_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.height = 16;
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc2_))
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
      
      private function _FriendTemplateDetailview_VGroup4_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  §§goto(addr0040);
               }
               §§goto(addr0086);
            }
            addr0040:
            _loc1_.gap = 4;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._FriendTemplateDetailview_HGroup2_c(),this._FriendTemplateDetailview_HGroup3_c(),this._FriendTemplateDetailview_HGroup4_c()];
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0086:
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0086);
      }
      
      private function _FriendTemplateDetailview_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.mxmlContent = [this._FriendTemplateDetailview_LocaLabel4_i(),this._FriendTemplateDetailview_LocaLabel5_i()];
               if(!(_loc2_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr007b:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr007b);
      }
      
      private function _FriendTemplateDetailview_LocaLabel4_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc2_)
         {
            _loc1_.maxDisplayedLines = 3;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.styleName = "DataGridStatisticNames";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.percentWidth = 80;
                  if(_loc2_)
                  {
                     _loc1_.id = "_FriendTemplateDetailview_LocaLabel4";
                     if(_loc2_ || _loc2_)
                     {
                        addr0074:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr0088:
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr00a6:
                                 this._FriendTemplateDetailview_LocaLabel4 = _loc1_;
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr00b9:
                                    BindingManager.executeBindings(this,"_FriendTemplateDetailview_LocaLabel4",this._FriendTemplateDetailview_LocaLabel4);
                                 }
                                 §§goto(addr00c7);
                              }
                              §§goto(addr00b9);
                           }
                           addr00c7:
                           return _loc1_;
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0074);
               }
            }
            §§goto(addr00a6);
         }
         §§goto(addr0074);
      }
      
      private function _FriendTemplateDetailview_LocaLabel5_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.maxDisplayedLines = 3;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.styleName = "DataGridFriendStatisticValues";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.percentWidth = 40;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr006a:
                     _loc1_.id = "registeredDateLabel";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 §§goto(addr009d);
                              }
                           }
                           §§goto(addr00af);
                        }
                     }
                     addr009d:
                     this.registeredDateLabel = _loc1_;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr00af:
                        BindingManager.executeBindings(this,"registeredDateLabel",this.registeredDateLabel);
                     }
                  }
                  §§goto(addr00bc);
               }
               §§goto(addr006a);
            }
            §§goto(addr00af);
         }
         addr00bc:
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._FriendTemplateDetailview_LocaLabel6_i(),this._FriendTemplateDetailview_LocaLabel7_i()];
               if(!_loc3_)
               {
                  §§goto(addr005f);
               }
               §§goto(addr006b);
            }
            addr005f:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr006b:
                  _loc1_.document = this;
               }
            }
            §§goto(addr006f);
         }
         addr006f:
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_LocaLabel6_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.maxDisplayedLines = 3;
            if(_loc2_)
            {
               addr0032:
               _loc1_.styleName = "DataGridStatisticNames";
               if(!_loc3_)
               {
                  _loc1_.percentWidth = 80;
                  addr003d:
                  if(!_loc3_)
                  {
                     _loc1_.id = "_FriendTemplateDetailview_LocaLabel6";
                     if(_loc2_ || _loc2_)
                     {
                        addr0066:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr008f:
                                 this._FriendTemplateDetailview_LocaLabel6 = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr0099:
                                    BindingManager.executeBindings(this,"_FriendTemplateDetailview_LocaLabel6",this._FriendTemplateDetailview_LocaLabel6);
                                 }
                              }
                              §§goto(addr00a6);
                           }
                           §§goto(addr0099);
                        }
                        §§goto(addr008f);
                     }
                     addr00a6:
                     return _loc1_;
                  }
                  §§goto(addr0066);
               }
               §§goto(addr008f);
            }
            §§goto(addr003d);
         }
         §§goto(addr0032);
      }
      
      private function _FriendTemplateDetailview_LocaLabel7_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.maxDisplayedLines = 3;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.styleName = "DataGridFriendStatisticValues";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.percentWidth = 40;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr006e:
                     _loc1_.id = "lastLoginLabel";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr00a0:
                                 this.lastLoginLabel = _loc1_;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr00b2:
                                    BindingManager.executeBindings(this,"lastLoginLabel",this.lastLoginLabel);
                                 }
                                 §§goto(addr00bf);
                              }
                              §§goto(addr00b2);
                           }
                           §§goto(addr00bf);
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr00b2);
                  }
               }
               addr00bf:
               return _loc1_;
            }
         }
         §§goto(addr006e);
      }
      
      private function _FriendTemplateDetailview_HGroup4_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.mxmlContent = [this._FriendTemplateDetailview_LocaLabel8_i(),this._FriendTemplateDetailview_LocaLabel9_i()];
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0066:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0072:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0072);
            }
            addr0076:
            return _loc1_;
         }
         §§goto(addr0066);
      }
      
      private function _FriendTemplateDetailview_LocaLabel8_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.maxDisplayedLines = 3;
            if(_loc3_ || Boolean(_loc1_))
            {
               addr0033:
               _loc1_.styleName = "DataGridStatisticNames";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.percentWidth = 80;
                  if(_loc3_)
                  {
                     addr005d:
                     _loc1_.id = "_FriendTemplateDetailview_LocaLabel8";
                     if(_loc3_)
                     {
                        addr0075:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 §§goto(addr008a);
                              }
                              §§goto(addr0094);
                           }
                        }
                     }
                     addr008a:
                     this._FriendTemplateDetailview_LocaLabel8 = _loc1_;
                     if(_loc3_)
                     {
                        addr0094:
                        BindingManager.executeBindings(this,"_FriendTemplateDetailview_LocaLabel8",this._FriendTemplateDetailview_LocaLabel8);
                     }
                     §§goto(addr00a1);
                  }
                  addr00a1:
                  return _loc1_;
               }
               §§goto(addr0075);
            }
            §§goto(addr005d);
         }
         §§goto(addr0033);
      }
      
      private function _FriendTemplateDetailview_LocaLabel9_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.maxDisplayedLines = 3;
            if(_loc2_)
            {
               _loc1_.styleName = "DataGridFriendStatisticValues";
               if(_loc2_)
               {
                  _loc1_.percentWidth = 40;
                  if(!_loc3_)
                  {
                     _loc1_.id = "toalingameTimeLabel";
                     if(_loc2_)
                     {
                        addr0055:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0061:
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§goto(addr007f);
                              }
                           }
                           §§goto(addr0091);
                        }
                     }
                     addr007f:
                     this.toalingameTimeLabel = _loc1_;
                     if(_loc2_ || _loc2_)
                     {
                        addr0091:
                        BindingManager.executeBindings(this,"toalingameTimeLabel",this.toalingameTimeLabel);
                     }
                     §§goto(addr009e);
                  }
                  §§goto(addr0061);
               }
               addr009e:
               return _loc1_;
            }
            §§goto(addr007f);
         }
         §§goto(addr0055);
      }
      
      private function _FriendTemplateDetailview_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.top = 0;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc3_)
                  {
                     _loc1_.dynaMCSourceName = "stickytape_top";
                     if(_loc2_)
                     {
                        addr007a:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr008e:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr008e);
               }
            }
            §§goto(addr007a);
         }
         §§goto(addr008e);
      }
      
      private function _FriendTemplateDetailview_VGroup5_i() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.gap = -10;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.mxmlContent = [this._FriendTemplateDetailview_FriendDetailsCenterComponent1_i(),this._FriendTemplateDetailview_VGroup6_i()];
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           §§goto(addr0095);
                        }
                        §§goto(addr00c0);
                     }
                     addr0095:
                     _loc1_.id = "centerGroup";
                     if(_loc3_)
                     {
                        addr00ab:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr00c0:
                                 this.centerGroup = _loc1_;
                                 if(_loc3_)
                                 {
                                    BindingManager.executeBindings(this,"centerGroup",this.centerGroup);
                                 }
                              }
                           }
                           §§goto(addr00d7);
                        }
                        §§goto(addr00c0);
                     }
                     §§goto(addr00d7);
                  }
               }
               addr00d7:
               return _loc1_;
            }
            §§goto(addr0095);
         }
         §§goto(addr00ab);
      }
      
      private function _FriendTemplateDetailview_FriendDetailsCenterComponent1_i() : FriendDetailsCenterComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:FriendDetailsCenterComponent = new FriendDetailsCenterComponent();
         if(_loc2_ || _loc3_)
         {
            _loc1_.id = "center";
            if(!(_loc3_ && _loc2_))
            {
               addr004a:
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.document = this;
                     if(_loc2_ || Boolean(this))
                     {
                        addr007c:
                        this.center = _loc1_;
                        if(_loc2_)
                        {
                           addr0086:
                           BindingManager.executeBindings(this,"center",this.center);
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr0086);
                  }
                  addr0092:
                  return _loc1_;
               }
            }
            §§goto(addr007c);
         }
         §§goto(addr004a);
      }
      
      private function _FriendTemplateDetailview_VGroup6_i() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.gap = 0;
            if(!_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     addr003e:
                     _loc1_.mxmlContent = [this._FriendTemplateDetailview_MultistateButton1_i(),this._FriendTemplateDetailview_MultistateButton2_i()];
                     if(_loc3_ || Boolean(this))
                     {
                        addr0068:
                        _loc1_.id = "buttonGroup";
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr007b:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00aa:
                                    this.buttonGroup = _loc1_;
                                    if(!_loc2_)
                                    {
                                       BindingManager.executeBindings(this,"buttonGroup",this.buttonGroup);
                                    }
                                 }
                              }
                              §§goto(addr00c1);
                           }
                        }
                        §§goto(addr00aa);
                     }
                     §§goto(addr007b);
                  }
                  addr00c1:
                  return _loc1_;
               }
               §§goto(addr003e);
            }
            §§goto(addr00aa);
         }
         §§goto(addr0068);
      }
      
      private function _FriendTemplateDetailview_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.styleName = "friendAdd";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.width = 204;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.imageNameLeft = "button_icon_checkmark";
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.libNameLeft = "gui_popups_FriendBook";
                     if(!_loc2_)
                     {
                        _loc1_.addEventListener("mouseUp",this.__acceptButton_mouseUp);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0094:
                           _loc1_.id = "acceptButton";
                           if(!_loc2_)
                           {
                              addr009f:
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    addr00b6:
                                    _loc1_.document = this;
                                    if(!_loc2_)
                                    {
                                       addr00bf:
                                       this.acceptButton = _loc1_;
                                       if(_loc3_ || Boolean(this))
                                       {
                                          addr00d1:
                                          BindingManager.executeBindings(this,"acceptButton",this.acceptButton);
                                       }
                                    }
                                    §§goto(addr00de);
                                 }
                                 §§goto(addr00d1);
                              }
                              §§goto(addr00bf);
                           }
                           §§goto(addr00d1);
                        }
                        §§goto(addr00bf);
                     }
                     §§goto(addr0094);
                  }
                  addr00de:
                  return _loc1_;
               }
               §§goto(addr00bf);
            }
            §§goto(addr00b6);
         }
         §§goto(addr009f);
      }
      
      public function __acceptButton_mouseUp(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.acceptEvent();
         }
      }
      
      private function _FriendTemplateDetailview_MultistateButton2_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.styleName = "abort";
            if(_loc2_ || _loc2_)
            {
               _loc1_.width = 204;
               if(_loc2_)
               {
                  _loc1_.imageNameLeft = "button_icon_no";
                  if(_loc2_)
                  {
                     _loc1_.libNameLeft = "gui_popups_FriendBook";
                     addr0051:
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.addEventListener("mouseUp",this.__rejectButton_mouseUp);
                        if(_loc2_)
                        {
                           _loc1_.id = "rejectButton";
                           if(_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr00ad:
                                    _loc1_.document = this;
                                    if(_loc2_)
                                    {
                                       addr00b6:
                                       this.rejectButton = _loc1_;
                                       if(_loc2_ || Boolean(_loc1_))
                                       {
                                          addr00c8:
                                          BindingManager.executeBindings(this,"rejectButton",this.rejectButton);
                                       }
                                       §§goto(addr00d5);
                                    }
                                    §§goto(addr00c8);
                                 }
                                 §§goto(addr00d5);
                              }
                           }
                        }
                        §§goto(addr00b6);
                     }
                     §§goto(addr00c8);
                  }
                  §§goto(addr00ad);
               }
               §§goto(addr00d5);
            }
            §§goto(addr0051);
         }
         addr00d5:
         return _loc1_;
      }
      
      public function __rejectButton_mouseUp(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this.rejectEvent();
         }
      }
      
      private function _FriendTemplateDetailview_VGroup7_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.width = 220;
            if(!_loc3_)
            {
               _loc1_.height = 290;
               if(!_loc3_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._FriendTemplateDetailview_StickyNoteComponent1_c()];
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.id = "effectsGroup";
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           §§goto(addr0080);
                        }
                     }
                  }
                  §§goto(addr0098);
               }
               addr0080:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0098:
                     _loc1_.document = this;
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr00a9);
                     }
                  }
                  §§goto(addr00b3);
               }
               addr00a9:
               this.effectsGroup = _loc1_;
               if(!_loc3_)
               {
                  addr00b3:
                  BindingManager.executeBindings(this,"effectsGroup",this.effectsGroup);
               }
               §§goto(addr00c0);
            }
         }
         addr00c0:
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.height = 154;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.tapeTop = true;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0077:
                     _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._FriendTemplateDetailview_Array14_c);
                     if(!_loc2_)
                     {
                        §§goto(addr008c);
                     }
                  }
                  §§goto(addr00a0);
               }
            }
            §§goto(addr0077);
         }
         addr008c:
         if(!_loc1_.document)
         {
            if(!(_loc2_ && _loc2_))
            {
               addr00a0:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_Array14_c() : Array
      {
         return [this._FriendTemplateDetailview_VGroup8_c(),this._FriendTemplateDetailview_MultistateButton3_c()];
      }
      
      private function _FriendTemplateDetailview_VGroup8_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_)
            {
               addr0049:
               _loc1_.mxmlContent = [this._FriendTemplateDetailview_PostitHeaderComponent1_i(),this._FriendTemplateDetailview_LocaLabel10_i()];
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0049);
      }
      
      private function _FriendTemplateDetailview_PostitHeaderComponent1_i() : PostitHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.forcedstyleName = "friendPaperHeadline";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc2_)
               {
                  _loc1_.id = "giftingHeader";
                  if(_loc3_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr008b);
                        }
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr00a6);
               }
               addr008b:
               _loc1_.document = this;
               if(_loc3_)
               {
                  addr0094:
                  this.giftingHeader = _loc1_;
                  if(_loc3_ || _loc3_)
                  {
                     addr00a6:
                     BindingManager.executeBindings(this,"giftingHeader",this.giftingHeader);
                  }
               }
               §§goto(addr00b3);
            }
            §§goto(addr00a6);
         }
         addr00b3:
         return _loc1_;
      }
      
      private function _FriendTemplateDetailview_LocaLabel10_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 90;
            if(_loc2_)
            {
               _loc1_.styleName = "friendPaperSubHeadline";
               if(!(_loc3_ && _loc2_))
               {
                  addr0052:
                  _loc1_.id = "subHeaderLabel";
                  if(_loc2_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr007e:
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr0087:
                              this.subHeaderLabel = _loc1_;
                              if(!_loc3_)
                              {
                                 BindingManager.executeBindings(this,"subHeaderLabel",this.subHeaderLabel);
                              }
                           }
                        }
                        §§goto(addr009e);
                     }
                  }
                  §§goto(addr0087);
               }
               addr009e:
               return _loc1_;
            }
            §§goto(addr0052);
         }
         §§goto(addr007e);
      }
      
      private function _FriendTemplateDetailview_MultistateButton3_c() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_ || _loc3_)
         {
            _loc1_.enabled = false;
            if(!_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0051:
                  _loc1_.bottom = 8;
                  if(!_loc2_)
                  {
                     _loc1_.width = 172;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.imageNameLeft = "button_icon_closed";
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr0091);
                        }
                        §§goto(addr009d);
                     }
                  }
                  §§goto(addr00b1);
               }
               addr0091:
               _loc1_.imageNameRight = "gui_popups_FriendBook";
               if(_loc3_)
               {
                  addr009d:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        addr00b1:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr00b5);
            }
            §§goto(addr0051);
         }
         addr00b5:
         return _loc1_;
      }
      
      public function ___FriendTemplateDetailview_Group1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      private function _FriendTemplateDetailview_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc3_ || _loc2_)
         {
            §§pop().§§slot[1] = [];
            if(_loc3_ || _loc3_)
            {
               §§push(§§newactivation());
               if(!(_loc2_ && Boolean(this)))
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_ || _loc1_)
                  {
                     §§push(0);
                     if(_loc3_ || _loc3_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():String
                        {
                           var _loc1_:* = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.invitePlayerDetailsRegisteredDate");
                           return _loc1_ == undefined ? null : String(_loc1_);
                        },null,"_FriendTemplateDetailview_LocaLabel4.text");
                        if(!_loc2_)
                        {
                           addr008a:
                           §§push(§§newactivation());
                           if(_loc3_ || Boolean(this))
                           {
                              addr0099:
                              §§push(§§pop().§§slot[1]);
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(1);
                                 if(_loc3_)
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():String
                                    {
                                       var _loc1_:* = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.invitePlayerDetailsLastLogin");
                                       return _loc1_ == undefined ? null : String(_loc1_);
                                    },null,"_FriendTemplateDetailview_LocaLabel6.text");
                                    if(_loc3_ || Boolean(this))
                                    {
                                       addr00ce:
                                       §§push(§§newactivation());
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          §§goto(addr0110);
                                       }
                                       §§goto(addr010e);
                                    }
                                    §§goto(addr010c);
                                 }
                                 §§goto(addr00fa);
                              }
                              §§goto(addr00f8);
                           }
                           §§goto(addr010e);
                        }
                        §§goto(addr00ce);
                     }
                     §§goto(addr00fa);
                  }
                  addr0110:
                  §§goto(addr00e9);
               }
               §§goto(addr0099);
            }
            §§goto(addr008a);
         }
         addr00e9:
         §§push(§§pop().§§slot[1]);
         if(_loc3_ || _loc1_)
         {
            addr00fa:
            §§pop()[2] = new Binding(this,function():String
            {
               var _loc1_:* = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.invitePlayerDetailsTotalIngameTime");
               return _loc1_ == undefined ? null : String(_loc1_);
            },null,"_FriendTemplateDetailview_LocaLabel8.text");
            addr010e:
            addr010c:
            §§push(result);
            addr00f8:
         }
         return §§pop();
      }
      
      [Bindable(event="propertyChange")]
      public function get acceptButton() : MultistateButton
      {
         return this._1480909402acceptButton;
      }
      
      public function set acceptButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1480909402acceptButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1480909402acceptButton = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"acceptButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr006f);
               }
            }
            addr007e:
            return;
         }
         §§goto(addr006f);
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonGroup() : VGroup
      {
         return this._1781625235buttonGroup;
      }
      
      public function set buttonGroup(param1:VGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1781625235buttonGroup;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  addr0042:
                  this._1781625235buttonGroup = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr007b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr007b);
               }
            }
            addr008a:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get center() : FriendDetailsCenterComponent
      {
         return this._1364013995center;
      }
      
      public function set center(param1:FriendDetailsCenterComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1364013995center;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1364013995center = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr0067:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"center",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008d);
               }
               §§goto(addr0067);
            }
         }
         addr008d:
      }
      
      [Bindable(event="propertyChange")]
      public function get centerGroup() : VGroup
      {
         return this._1649846058centerGroup;
      }
      
      public function set centerGroup(param1:VGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1649846058centerGroup;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1649846058centerGroup = param1;
                  addr003f:
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"centerGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get effectsGroup() : VGroup
      {
         return this._490397341effectsGroup;
      }
      
      public function set effectsGroup(param1:VGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._490397341effectsGroup;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._490397341effectsGroup = param1;
                  if(_loc3_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0058);
            }
            addr0076:
            return;
         }
         §§goto(addr0058);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavorText() : LocaLabel
      {
         return this._1684755691flavorText;
      }
      
      public function set flavorText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1684755691flavorText;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1684755691flavorText = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get giftingHeader() : PostitHeaderComponent
      {
         return this._1594450399giftingHeader;
      }
      
      public function set giftingHeader(param1:PostitHeaderComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1594450399giftingHeader;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1594450399giftingHeader = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"giftingHeader",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get headline() : LocaLabel
      {
         return this._1115058732headline;
      }
      
      public function set headline(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1115058732headline;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1115058732headline = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headline",_loc2_,param1));
                        }
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr0072);
               }
            }
         }
         addr0081:
      }
      
      [Bindable(event="propertyChange")]
      public function get informationLabel() : LocaLabel
      {
         return this._1725723944informationLabel;
      }
      
      public function set informationLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1725723944informationLabel;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._1725723944informationLabel = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr007b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"informationLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008a);
               }
               §§goto(addr007b);
            }
            addr008a:
            return;
         }
         §§goto(addr007b);
      }
      
      [Bindable(event="propertyChange")]
      public function get lastLoginLabel() : LocaLabel
      {
         return this._1556642751lastLoginLabel;
      }
      
      public function set lastLoginLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1556642751lastLoginLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1556642751lastLoginLabel = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastLoginLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
               }
               §§goto(addr0067);
            }
            addr0076:
            return;
         }
         §§goto(addr0067);
      }
      
      [Bindable(event="propertyChange")]
      public function get registeredDateLabel() : LocaLabel
      {
         return this._336957564registeredDateLabel;
      }
      
      public function set registeredDateLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._336957564registeredDateLabel;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._336957564registeredDateLabel = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"registeredDateLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0073);
                  }
                  §§goto(addr0064);
               }
            }
            addr0073:
            return;
         }
         §§goto(addr0064);
      }
      
      [Bindable(event="propertyChange")]
      public function get rejectButton() : MultistateButton
      {
         return this._1819087793rejectButton;
      }
      
      public function set rejectButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1819087793rejectButton;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  addr0041:
                  this._1819087793rejectButton = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rejectButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get subHeaderLabel() : LocaLabel
      {
         return this._326024711subHeaderLabel;
      }
      
      public function set subHeaderLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._326024711subHeaderLabel;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._326024711subHeaderLabel = param1;
                  addr003e:
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"subHeaderLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003e);
      }
      
      [Bindable(event="propertyChange")]
      public function get toalingameTimeLabel() : LocaLabel
      {
         return this._781541034toalingameTimeLabel;
      }
      
      public function set toalingameTimeLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._781541034toalingameTimeLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._781541034toalingameTimeLabel = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0044);
                  }
                  §§goto(addr0053);
               }
               addr0044:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0053:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"toalingameTimeLabel",_loc2_,param1));
                  }
               }
               §§goto(addr0062);
            }
            addr0062:
            return;
         }
         §§goto(addr0053);
      }
   }
}

