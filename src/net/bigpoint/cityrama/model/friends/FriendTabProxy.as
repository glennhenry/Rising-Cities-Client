package net.bigpoint.cityrama.model.friends
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.friends.vo.TabsVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class FriendTabProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "FriendTabProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc1_)
      {
         NAME = "FriendTabProxy";
      }
      
      private var _tabs:ArrayCollection;
      
      private var _selectedIndex:int = -1;
      
      public function FriendTabProxy(param1:Object = null)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:TabsVo = null;
         if(!(_loc4_ && Boolean(_loc3_)))
         {
            super(NAME,param1);
         }
         var _loc2_:FlashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         if(_loc5_ || Boolean(_loc3_))
         {
            this._tabs = new ArrayCollection();
            if(!(_loc4_ && Boolean(param1)))
            {
               addr0066:
               if(!_loc2_.friendInviteDisabled)
               {
                  addr006e:
                  _loc3_ = new TabsVo();
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     _loc3_.styleName = "";
                     if(!_loc4_)
                     {
                        _loc3_.tabLabel = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.inviteFriendsTab");
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           _loc3_.enabled = true;
                           if(_loc5_ || Boolean(_loc2_))
                           {
                              _loc3_.hasNews = false;
                              if(_loc5_ || Boolean(_loc2_))
                              {
                                 addr00e5:
                                 this._tabs.addItem(_loc3_);
                              }
                           }
                           _loc3_ = new TabsVo();
                           if(!_loc4_)
                           {
                              _loc3_.styleName = "invite";
                              if(!_loc4_)
                              {
                                 _loc3_.tabLabel = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.inviteTab");
                                 if(_loc5_)
                                 {
                                    _loc3_.enabled = true;
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       addr0134:
                                       _loc3_.hasNews = false;
                                       if(_loc5_)
                                       {
                                          this._tabs.addItem(_loc3_);
                                       }
                                    }
                                    addr0148:
                                    _loc3_ = new TabsVo();
                                    if(_loc5_ || Boolean(_loc2_))
                                    {
                                       _loc3_.styleName = "messages";
                                       if(!(_loc4_ && Boolean(_loc2_)))
                                       {
                                          addr0175:
                                          _loc3_.tabLabel = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.friendMessageTab");
                                          if(!_loc4_)
                                          {
                                             §§goto(addr0197);
                                          }
                                          §§goto(addr01c0);
                                       }
                                       addr0197:
                                       §§push(_loc3_);
                                       §§push(_loc2_.pmsMaintenance);
                                       if(!_loc4_)
                                       {
                                          §§push(!§§pop());
                                       }
                                       §§pop().enabled = §§pop();
                                       if(!_loc4_)
                                       {
                                          _loc3_.hasNews = false;
                                          if(_loc5_ || Boolean(this))
                                          {
                                             addr01c0:
                                             this._tabs.addItem(_loc3_);
                                          }
                                       }
                                       return;
                                    }
                                    §§goto(addr0175);
                                 }
                              }
                           }
                           §§goto(addr0134);
                        }
                     }
                  }
                  §§goto(addr00e5);
               }
               §§goto(addr0148);
            }
            §§goto(addr006e);
         }
         §§goto(addr0066);
      }
      
      public function get tabs() : ArrayCollection
      {
         return this._tabs;
      }
      
      public function set tabs(param1:ArrayCollection) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._tabs = param1;
         }
      }
      
      public function get selectedIndex() : int
      {
         return this._selectedIndex;
      }
      
      public function set selectedIndex(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._selectedIndex = param1;
         }
      }
      
      public function updateTabInfo(param1:int, param2:String = "", param3:String = "", param4:Boolean = true, param5:* = null) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc6_:TabsVo = this._tabs.removeItemAt(param1) as TabsVo;
         §§push(_loc6_);
         if(_loc8_)
         {
            §§push(param2);
            if(!_loc7_)
            {
               if(§§pop())
               {
                  addr003a:
                  §§push(param2);
                  if(!_loc7_)
                  {
                     addr0041:
                     §§push(§§pop());
                     if(_loc8_)
                     {
                     }
                  }
               }
               else
               {
                  §§push(_loc6_.styleName);
                  if(!_loc7_)
                  {
                     §§push(§§pop());
                  }
               }
               §§pop().styleName = §§pop();
               if(!_loc7_)
               {
                  §§push(_loc6_);
                  if(_loc8_ || Boolean(param3))
                  {
                     §§push(param3);
                     if(!_loc7_)
                     {
                        if(§§pop())
                        {
                           addr007a:
                           §§push(param3);
                           if(_loc8_)
                           {
                              §§push(§§pop());
                              if(_loc7_)
                              {
                              }
                           }
                           else
                           {
                              addr00a4:
                              §§push(§§pop());
                           }
                        }
                        else
                        {
                           §§push(_loc6_.tabLabel);
                           if(_loc8_)
                           {
                              §§goto(addr00a4);
                           }
                        }
                     }
                     §§pop().tabLabel = §§pop();
                     if(!(_loc7_ && Boolean(this)))
                     {
                        §§goto(addr00b6);
                     }
                     §§goto(addr012d);
                  }
                  §§goto(addr007a);
               }
               addr00b6:
               _loc6_.enabled = param4;
               if(!(_loc7_ && Boolean(param2)))
               {
                  §§push(_loc6_);
                  if(_loc8_)
                  {
                     if(param5 != null)
                     {
                        addr00da:
                        §§push(param5 as Boolean);
                        if(_loc7_)
                        {
                        }
                     }
                     else
                     {
                        §§push(_loc6_.hasNews);
                        if(!_loc7_)
                        {
                           §§push(§§pop());
                        }
                     }
                     §§pop().hasNews = §§pop();
                     if(!(_loc7_ && Boolean(this)))
                     {
                        this._tabs.addItemAt(_loc6_,param1);
                        if(_loc8_ || Boolean(param3))
                        {
                           addr012d:
                           facade.sendNotification(ApplicationNotificationConstants.FRIEND_TAB_UPDATE);
                        }
                     }
                     §§goto(addr0138);
                  }
                  §§goto(addr00da);
               }
               addr0138:
               return;
            }
            §§goto(addr0041);
         }
         §§goto(addr003a);
      }
   }
}

