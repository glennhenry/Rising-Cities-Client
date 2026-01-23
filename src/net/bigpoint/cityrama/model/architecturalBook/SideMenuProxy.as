package net.bigpoint.cityrama.model.architecturalBook
{
   import flash.events.Event;
   import mx.collections.ArrayList;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.architecturalBook.vo.SideMenueArchCategoryVO;
   import net.bigpoint.cityrama.model.featuredEvent.FeaturedEventProxy;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class SideMenuProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "SideMenuProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && SideMenuProxy))
      {
         NAME = "SideMenuProxy";
      }
      
      private var _entriesAvailable:Boolean;
      
      private var _fld:FileRuntimeLoadServiceDynamic;
      
      private var _fEP:FeaturedEventProxy;
      
      public function SideMenuProxy()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super(NAME,new ArrayList());
         }
      }
      
      private function loadAssets() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:Array = ["gui_popups_paperPopup"];
         var _loc2_:String = "sideMenueNotification";
         if(_loc4_)
         {
            this._fld = FileRuntimeLoadServiceDynamic.getInstance();
            if(!(_loc3_ && _loc3_))
            {
               addr004b:
               §§push(this._fld);
               if(!_loc3_)
               {
                  if(!§§pop().libAllReadyLoaded("gui_popups_paperPopup"))
                  {
                     if(!_loc3_)
                     {
                        addr006e:
                        §§push(this._fld);
                        if(_loc4_)
                        {
                           §§pop().addEventListener(_loc2_,this.createEntries);
                           if(_loc4_ || _loc3_)
                           {
                              addr0092:
                              this._fld.checkSWFArrayLoaded(_loc1_,_loc2_);
                           }
                           §§goto(addr0098);
                        }
                        §§goto(addr0092);
                     }
                  }
                  addr0098:
                  return;
               }
               §§goto(addr0092);
            }
            §§goto(addr006e);
         }
         §§goto(addr004b);
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super.onRegister();
            if(!_loc2_)
            {
               §§goto(addr0031);
            }
            §§goto(addr0053);
         }
         addr0031:
         this._fld = FileRuntimeLoadServiceDynamic.getInstance();
         if(_loc1_)
         {
            this._entriesAvailable = false;
            if(!(_loc2_ && _loc2_))
            {
               addr0053:
               this.loadAssets();
            }
         }
      }
      
      private function get featuredEventProxy() : FeaturedEventProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this._fEP);
            if(!(_loc1_ && Boolean(this)))
            {
               if(§§pop() == null)
               {
                  if(!_loc1_)
                  {
                     this._fEP = FeaturedEventProxy(facade.retrieveProxy(FeaturedEventProxy.NAME));
                  }
               }
               addr0058:
               return this._fEP;
            }
         }
         §§goto(addr0058);
      }
      
      private function createEntries(param1:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:SideMenueArchCategoryVO = null;
         if(!_loc4_)
         {
            this._entriesAvailable = true;
            if(!_loc4_)
            {
               addr0029:
               this._fld.removeEventListener("sideMenueNotification",this.createEntries);
            }
            _loc2_ = new SideMenueArchCategoryVO();
            if(_loc3_ || Boolean(param1))
            {
               _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg1");
               if(_loc3_ || _loc3_)
               {
                  _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg1_highlight");
                  if(!_loc4_)
                  {
                     _loc2_.visualIcon = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_1_residential");
                     if(!_loc4_)
                     {
                        _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
                        if(!_loc4_)
                        {
                           _loc2_.type = BlueprintGroupConstants.BLUEPRINT_RESIDENTIAL;
                           if(!(_loc4_ && Boolean(_loc2_)))
                           {
                              addr00ce:
                              _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.category.residential"));
                              if(!(_loc4_ && Boolean(_loc2_)))
                              {
                                 addr00fb:
                                 this.entries.addItem(_loc2_);
                              }
                              addr0104:
                              _loc2_ = new SideMenueArchCategoryVO();
                              if(_loc3_)
                              {
                                 _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg2");
                                 if(!_loc4_)
                                 {
                                    _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg2_highlight");
                                    if(_loc3_ || Boolean(_loc2_))
                                    {
                                       _loc2_.visualIcon = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_2_produktion");
                                       if(_loc3_)
                                       {
                                          _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
                                          if(_loc3_)
                                          {
                                             addr017a:
                                             _loc2_.type = BlueprintGroupConstants.BLUEPRINT_PRODUCTION;
                                             if(_loc3_)
                                             {
                                                addr0188:
                                                _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.category.production"));
                                                if(_loc3_ || Boolean(this))
                                                {
                                                   this.entries.addItem(_loc2_);
                                                }
                                             }
                                          }
                                          addr01bd:
                                          _loc2_ = new SideMenueArchCategoryVO();
                                          if(_loc3_)
                                          {
                                             _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg3");
                                             if(_loc3_)
                                             {
                                                _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg3_highlight");
                                                if(_loc3_ || Boolean(_loc2_))
                                                {
                                                   addr0203:
                                                   _loc2_.visualIcon = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_3_need");
                                                   if(!(_loc4_ && Boolean(this)))
                                                   {
                                                      _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
                                                      if(!_loc4_)
                                                      {
                                                         addr023c:
                                                         _loc2_.type = BlueprintGroupConstants.BLUEPRINT_SHOP;
                                                         if(!_loc4_)
                                                         {
                                                            addr024b:
                                                            _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.category.shops"));
                                                            if(_loc3_ || Boolean(param1))
                                                            {
                                                               addr0277:
                                                               this.entries.addItem(_loc2_);
                                                            }
                                                         }
                                                         _loc2_ = new SideMenueArchCategoryVO();
                                                         if(_loc3_ || Boolean(param1))
                                                         {
                                                            _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg1");
                                                            if(_loc3_ || Boolean(this))
                                                            {
                                                               _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg1_highlight");
                                                               if(_loc3_ || Boolean(_loc2_))
                                                               {
                                                                  _loc2_.visualIcon = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_4_powerplants");
                                                                  if(!(_loc4_ && Boolean(param1)))
                                                                  {
                                                                     addr0304:
                                                                     _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
                                                                     if(!(_loc4_ && Boolean(this)))
                                                                     {
                                                                        _loc2_.type = BlueprintGroupConstants.BLUEPRINT_POWERPLANT;
                                                                        if(!_loc4_)
                                                                        {
                                                                           _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.category.powerplants"));
                                                                           if(_loc3_ || Boolean(param1))
                                                                           {
                                                                              addr035f:
                                                                              this.entries.addItem(_loc2_);
                                                                           }
                                                                           addr0368:
                                                                           _loc2_ = new SideMenueArchCategoryVO();
                                                                           if(_loc3_ || Boolean(this))
                                                                           {
                                                                              _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg2");
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr0398:
                                                                                 _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg2_highlight");
                                                                                 if(!(_loc4_ && Boolean(param1)))
                                                                                 {
                                                                                    _loc2_.visualIcon = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_5_decoration");
                                                                                    if(!(_loc4_ && _loc3_))
                                                                                    {
                                                                                       addr03d9:
                                                                                       _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          _loc2_.type = BlueprintGroupConstants.BLUEPRINT_DECORATION;
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr03ff:
                                                                                             _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.category.decoration"));
                                                                                             if(_loc3_ || Boolean(_loc2_))
                                                                                             {
                                                                                                addr042b:
                                                                                                this.entries.addItem(_loc2_);
                                                                                             }
                                                                                             _loc2_ = new SideMenueArchCategoryVO();
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg3");
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg3_highlight");
                                                                                                   if(!(_loc4_ && Boolean(param1)))
                                                                                                   {
                                                                                                      _loc2_.visualIcon = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_6_street");
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr0494:
                                                                                                         _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
                                                                                                         if(_loc3_ || Boolean(_loc2_))
                                                                                                         {
                                                                                                            _loc2_.type = BlueprintGroupConstants.BLUEPRINT_GROUNDS;
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               addr04c2:
                                                                                                               _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.category.streets"));
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  addr04e7:
                                                                                                                  this.entries.addItem(_loc2_);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr04f0);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr04c2);
                                                                                                   }
                                                                                                   §§goto(addr0494);
                                                                                                }
                                                                                                addr04f0:
                                                                                                _loc2_ = new SideMenueArchCategoryVO();
                                                                                                if(_loc3_ || Boolean(_loc2_))
                                                                                                {
                                                                                                   _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg3");
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg3_highlight");
                                                                                                      if(_loc3_ || Boolean(this))
                                                                                                      {
                                                                                                         _loc2_.visualIcon = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_7_special");
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§goto(addr0557);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr05b9);
                                                                                                   }
                                                                                                   §§goto(addr05d0);
                                                                                                }
                                                                                                addr0557:
                                                                                                _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   _loc2_.type = BlueprintGroupConstants.BLUEPRINT_SPECIAL;
                                                                                                   if(!(_loc4_ && Boolean(this)))
                                                                                                   {
                                                                                                      _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.category.special"));
                                                                                                      §§goto(addr0586);
                                                                                                   }
                                                                                                   §§goto(addr05d0);
                                                                                                }
                                                                                                addr0586:
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr05b9:
                                                                                                   this.entries.addItem(_loc2_);
                                                                                                   if(!(_loc4_ && Boolean(_loc2_)))
                                                                                                   {
                                                                                                      addr05d0:
                                                                                                      facade.sendNotification(ApplicationNotificationConstants.ARCHITECT_SIDE_ENTRIES_AVAILABLE);
                                                                                                   }
                                                                                                }
                                                                                                return;
                                                                                             }
                                                                                             §§goto(addr04e7);
                                                                                          }
                                                                                          §§goto(addr042b);
                                                                                       }
                                                                                       §§goto(addr03ff);
                                                                                    }
                                                                                    §§goto(addr042b);
                                                                                 }
                                                                                 §§goto(addr03d9);
                                                                              }
                                                                              §§goto(addr03ff);
                                                                           }
                                                                           §§goto(addr0398);
                                                                        }
                                                                     }
                                                                     §§goto(addr035f);
                                                                  }
                                                                  §§goto(addr0368);
                                                               }
                                                               §§goto(addr035f);
                                                            }
                                                            §§goto(addr0304);
                                                         }
                                                         §§goto(addr0368);
                                                      }
                                                      §§goto(addr024b);
                                                   }
                                                   §§goto(addr0277);
                                                }
                                                §§goto(addr023c);
                                             }
                                             §§goto(addr0277);
                                          }
                                          §§goto(addr0203);
                                       }
                                       §§goto(addr017a);
                                    }
                                 }
                                 §§goto(addr0188);
                              }
                              §§goto(addr01bd);
                           }
                           §§goto(addr00fb);
                        }
                        §§goto(addr0104);
                     }
                     §§goto(addr00fb);
                  }
                  §§goto(addr0104);
               }
               §§goto(addr00ce);
            }
            §§goto(addr00fb);
         }
         §§goto(addr0029);
      }
      
      public function get currentEntries() : ArrayList
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:SideMenueArchCategoryVO = null;
         var _loc1_:ArrayList = new ArrayList();
         var _loc3_:int = 0;
         for each(_loc2_ in this.entries.source)
         {
            if(!(_loc6_ && Boolean(_loc3_)))
            {
               _loc1_.addItem(_loc2_);
            }
         }
         return _loc1_ as ArrayList;
      }
      
      private function get entries() : ArrayList
      {
         return super.data as ArrayList;
      }
      
      public function getAllTypes() : Vector.<String>
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:SideMenueArchCategoryVO = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         var _loc3_:int = 0;
         while(_loc3_ < this.entries.length)
         {
            _loc1_ = this.entries.getItemAt(_loc3_) as SideMenueArchCategoryVO;
            if(_loc4_ || Boolean(_loc2_))
            {
               if(_loc1_)
               {
                  if(!_loc5_)
                  {
                     addr0073:
                     _loc2_.push(_loc1_.type);
                     if(!_loc4_)
                     {
                        continue;
                     }
                  }
               }
               _loc3_++;
               continue;
            }
            §§goto(addr0073);
         }
         return _loc2_;
      }
      
      public function getIndexByType(param1:String) : uint
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:SideMenueArchCategoryVO = null;
         var _loc3_:* = 0;
         for(; _loc3_ < this.currentEntries.length; _loc3_ = §§pop())
         {
            _loc2_ = this.currentEntries.getItemAt(_loc3_) as SideMenueArchCategoryVO;
            if(!(_loc4_ && Boolean(param1)))
            {
               §§push(Boolean(_loc2_));
               if(_loc5_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(_loc5_)
                     {
                        §§pop();
                        if(_loc5_)
                        {
                           addr006d:
                           if(_loc2_.type == param1)
                           {
                              if(!(_loc4_ && Boolean(_loc2_)))
                              {
                                 §§push(_loc3_);
                                 if(!(_loc4_ && Boolean(_loc3_)))
                                 {
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 addr00ab:
                                 §§push(_loc3_);
                                 if(!_loc5_)
                                 {
                                    continue;
                                 }
                              }
                              §§push(uint(§§pop() + 1));
                              continue;
                           }
                        }
                        §§goto(addr00ab);
                     }
                  }
               }
               §§goto(addr006d);
            }
            §§goto(addr00ab);
         }
         return 0;
      }
      
      public function addNewIconAt(param1:Array) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:SideMenueArchCategoryVO = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.entries.source)
         {
            if(_loc6_)
            {
               §§push(_loc2_);
               §§push(param1.indexOf(_loc2_.type) == -1);
               if(!(_loc5_ && Boolean(_loc3_)))
               {
                  §§push(!§§pop());
               }
               §§pop().isNew = §§pop();
            }
         }
      }
   }
}

