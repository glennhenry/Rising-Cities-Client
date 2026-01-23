package net.bigpoint.cityrama.model.friends
{
   import flash.events.Event;
   import mx.collections.ArrayList;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.architecturalBook.vo.ImageValueVO;
   import net.bigpoint.cityrama.model.architecturalBook.vo.PaperPopUpCenterDetailsVO;
   import net.bigpoint.cityrama.model.architecturalBook.vo.SideMenueArchCategoryVO;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class SideMenuFriendBookProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "SideMenuFriendBookProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "SideMenuFriendBookProxy";
      }
      
      private var _entriesAvailable:Boolean;
      
      private var _fld:FileRuntimeLoadServiceDynamic;
      
      public function SideMenuFriendBookProxy()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super(NAME,new ArrayList());
            if(!_loc2_)
            {
               addr0030:
               this._fld = FileRuntimeLoadServiceDynamic.getInstance();
               if(!(_loc2_ && _loc1_))
               {
                  this._entriesAvailable = false;
                  if(!_loc2_)
                  {
                     this.loadAssets();
                  }
               }
            }
            return;
         }
         §§goto(addr0030);
      }
      
      private function loadAssets() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:Array = ["gui_popups_FriendBook","gui_popups_paperPopup"];
         var _loc2_:String = "sideMenueFriendBookNotification";
         if(!_loc4_)
         {
            this._fld = FileRuntimeLoadServiceDynamic.getInstance();
            if(_loc3_ || Boolean(this))
            {
               §§push(this._fld);
               if(!(_loc4_ && Boolean(this)))
               {
                  §§push("gui_popups_paperPopup");
                  if(_loc3_)
                  {
                     §§push(§§pop().libAllReadyLoaded(§§pop()));
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(!§§pop());
                        if(!_loc4_)
                        {
                           var _temp_4:* = §§pop();
                           §§push(_temp_4);
                           if(!_temp_4)
                           {
                              if(!_loc4_)
                              {
                                 §§goto(addr0088);
                              }
                           }
                           §§goto(addr00ba);
                        }
                        addr0088:
                        §§pop();
                        if(!_loc4_)
                        {
                           addr008f:
                           §§push(this._fld);
                           if(!_loc4_)
                           {
                              addr00ba:
                              addr009c:
                              §§push(§§pop().libAllReadyLoaded("gui_popups_paperPopup"));
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(!§§pop());
                              }
                              if(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    §§push(this._fld);
                                    if(!_loc4_)
                                    {
                                       addr00ce:
                                       §§pop().addEventListener(_loc2_,this.createEntries);
                                       if(_loc3_)
                                       {
                                          addr00e0:
                                          this._fld.checkSWFArrayLoaded(_loc1_,_loc2_);
                                          addr00dc:
                                       }
                                       §§goto(addr00e6);
                                    }
                                    §§goto(addr00e0);
                                 }
                                 §§goto(addr00dc);
                              }
                              §§goto(addr00e6);
                           }
                           §§goto(addr00e0);
                        }
                        addr00e6:
                        return;
                     }
                     §§goto(addr00ba);
                  }
                  §§goto(addr009c);
               }
               §§goto(addr00ce);
            }
            §§goto(addr008f);
         }
         §§goto(addr00dc);
      }
      
      private function createEntries(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:SideMenueArchCategoryVO = null;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            this._entriesAvailable = true;
            if(_loc4_ || Boolean(_loc2_))
            {
               addr0039:
               this._fld.removeEventListener("sideMenueNotification",this.createEntries);
            }
            _loc2_ = new SideMenueArchCategoryVO();
            if(_loc4_)
            {
               _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg1");
               if(!(_loc3_ && Boolean(param1)))
               {
                  _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg1_highlight");
                  if(!_loc3_)
                  {
                     addr008f:
                     _loc2_.visualIcon = this._fld.getBitmap("gui_popups_FriendBook","categorie_icon_friends");
                     if(!(_loc3_ && _loc3_))
                     {
                        addr00af:
                        _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
                        if(!_loc3_)
                        {
                           addr00c6:
                           _loc2_.type = FriendBookConstants.FRIENDS_OVERVIEW;
                           if(_loc4_)
                           {
                              _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.friendlist"),String("rcl.tooltips.friendlist.side.all"));
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr010e:
                                 this.entries.addItem(_loc2_);
                              }
                              addr0117:
                              _loc2_ = new SideMenueArchCategoryVO();
                              if(!_loc3_)
                              {
                                 _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg2");
                                 if(_loc4_)
                                 {
                                    addr013f:
                                    _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg2_highlight");
                                    if(_loc4_ || Boolean(_loc2_))
                                    {
                                       _loc2_.visualIcon = this._fld.getBitmap("gui_popups_FriendBook","categorie_icon_pending");
                                       if(_loc4_ || Boolean(_loc2_))
                                       {
                                          _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
                                          if(!(_loc3_ && Boolean(_loc2_)))
                                          {
                                             addr019f:
                                             _loc2_.type = FriendBookConstants.PENDING_FRIENDS_OVERVIEW;
                                             if(_loc4_)
                                             {
                                                _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.friendlist"),String("rcl.tooltips.friendlist.side.pending"));
                                                if(!_loc3_)
                                                {
                                                   addr01dc:
                                                   this.entries.addItem(_loc2_);
                                                   if(!(_loc3_ && Boolean(_loc2_)))
                                                   {
                                                      addr01f2:
                                                      facade.sendNotification(ApplicationNotificationConstants.FRIENDBOOK_SIDE_ENTRIES_AVAILABLE);
                                                   }
                                                }
                                                §§goto(addr01fc);
                                             }
                                          }
                                          §§goto(addr01dc);
                                       }
                                       §§goto(addr01f2);
                                    }
                                    §§goto(addr019f);
                                 }
                                 addr01fc:
                                 return;
                              }
                              §§goto(addr013f);
                           }
                           §§goto(addr010e);
                        }
                        §§goto(addr0117);
                     }
                     §§goto(addr00c6);
                  }
                  §§goto(addr00af);
               }
               §§goto(addr00c6);
            }
            §§goto(addr008f);
         }
         §§goto(addr0039);
      }
      
      public function detailCenterData() : ArrayList
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:ArrayList = new ArrayList();
         var _loc2_:PaperPopUpCenterDetailsVO = new PaperPopUpCenterDetailsVO();
         if(_loc4_ || Boolean(_loc1_))
         {
            _loc2_.visualBluePrintBg = this._fld.getBitmap("gui_popups_paperPopup","architect_blueprint_big");
            if(!_loc3_)
            {
               _loc2_.visualBuilding = this._fld.getBitmap("gui_popups_paperPopup","layer_icon_architect");
               if(!_loc3_)
               {
                  _loc2_.rakeState = this._fld.getBitmap("gui_popups_paperPopup","checkmark_green");
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     §§goto(addr00a2);
                  }
                  §§goto(addr00b5);
               }
            }
         }
         addr00a2:
         _loc2_.enableBuyButton = false;
         if(_loc4_ || Boolean(_loc2_))
         {
            addr00b5:
            _loc1_.addItem(_loc2_);
         }
         return _loc1_;
      }
      
      public function get entries() : ArrayList
      {
         return super.data as ArrayList;
      }
      
      public function get entriesAvailable() : Boolean
      {
         return this._entriesAvailable;
      }
      
      public function detailCostsData() : ArrayList
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:ArrayList = new ArrayList();
         var _loc2_:ImageValueVO = new ImageValueVO();
         if(!_loc4_)
         {
            _loc2_.visual = this._fld.getBitmap("gui_infield_gui_mainmenue","ui_mainbar_icon_cc");
            if(!(_loc4_ && Boolean(this)))
            {
               _loc2_.textLabel = "120.000";
               if(_loc3_ || Boolean(_loc2_))
               {
                  §§goto(addr0082);
               }
               §§goto(addr0099);
            }
         }
         addr0082:
         _loc2_.visualOK = this._fld.getBitmap("gui_popups_paperPopup","layer_close");
         if(_loc3_)
         {
            addr0099:
            _loc2_.valueColor = 5726299;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.addItem(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function detailEffectsData() : ArrayList
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:ArrayList = new ArrayList();
         var _loc2_:ImageValueVO = new ImageValueVO();
         if(!(_loc4_ && Boolean(this)))
         {
            _loc2_.visual = this._fld.getBitmap("gui_infield_gui_mainmenue","ui_mainbar_icon_energy");
            if(_loc3_)
            {
               _loc2_.textLabel = "-10";
               if(!(_loc4_ && Boolean(this)))
               {
                  _loc2_.valueColor = 5726299;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr0085:
                     _loc1_.addItem(_loc2_);
                     if(_loc3_)
                     {
                        §§goto(addr0090);
                     }
                     §§goto(addr00bc);
                  }
                  §§goto(addr00ca);
               }
               §§goto(addr0085);
            }
            §§goto(addr00bc);
         }
         addr0090:
         _loc2_.visual = this._fld.getBitmap("gui_infield_gui_mainmenue","ui_mainbar_icon_happy");
         if(_loc3_ || _loc3_)
         {
            addr00bc:
            _loc2_.textLabel = "-20";
            if(!_loc4_)
            {
               addr00ca:
               _loc2_.valueColor = 5726299;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr00dd:
                  _loc1_.addItem(_loc2_);
               }
               §§goto(addr00e3);
            }
            §§goto(addr00dd);
         }
         addr00e3:
         return _loc1_;
      }
      
      public function addNewIconAt(param1:Array) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:SideMenueArchCategoryVO = null;
         for each(_loc2_ in this.entries.source)
         {
            if(!_loc6_)
            {
               §§push(_loc2_);
               §§push(param1.indexOf(_loc2_.type) == -1);
               if(!_loc6_)
               {
                  §§push(!§§pop());
               }
               §§pop().isNew = §§pop();
            }
         }
      }
   }
}

