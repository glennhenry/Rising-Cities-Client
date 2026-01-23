package net.bigpoint.cityrama.model.storage
{
   import flash.events.Event;
   import mx.collections.ArrayList;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.architecturalBook.vo.SideMenueArchCategoryVO;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class StorageSideMenuProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "StorageSideMenuProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || StorageSideMenuProxy)
      {
         NAME = "StorageSideMenuProxy";
      }
      
      private var _entriesAvailable:Boolean;
      
      private var _fld:FileRuntimeLoadServiceDynamic;
      
      private var _fP:FeatureProxy;
      
      public function StorageSideMenuProxy()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super(NAME,new ArrayList());
            if(!_loc1_)
            {
               addr0031:
               this._fld = FileRuntimeLoadServiceDynamic.getInstance();
               if(_loc2_)
               {
                  this._entriesAvailable = false;
                  if(!_loc1_)
                  {
                     this.loadAssets();
                  }
               }
            }
            return;
         }
         §§goto(addr0031);
      }
      
      private function loadAssets() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:Array = ["gui_popups_paperPopup"];
         var _loc2_:String = "storageSideMenueNotification";
         if(!(_loc4_ && _loc3_))
         {
            this._fld = FileRuntimeLoadServiceDynamic.getInstance();
            if(!_loc4_)
            {
               §§push(this._fld);
               if(_loc3_)
               {
                  if(!§§pop().libAllReadyLoaded("gui_popups_paperPopup"))
                  {
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        addr0076:
                        §§push(this._fld);
                        if(_loc3_)
                        {
                           §§pop().addEventListener(_loc2_,this.createEntries);
                           if(_loc3_)
                           {
                              addr0091:
                              this._fld.checkSWFArrayLoaded(_loc1_,_loc2_);
                           }
                           §§goto(addr0097);
                        }
                        §§goto(addr0091);
                     }
                  }
                  §§goto(addr0097);
               }
               §§goto(addr0091);
            }
            addr0097:
            return;
         }
         §§goto(addr0076);
      }
      
      private function createEntries(param1:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            this._entriesAvailable = true;
            if(_loc3_)
            {
               this._fld.removeEventListener("storageSideMenueNotification",this.createEntries);
            }
         }
         var _loc2_:SideMenueArchCategoryVO = new SideMenueArchCategoryVO();
         if(_loc3_)
         {
            _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg1");
            if(_loc3_ || Boolean(_loc2_))
            {
               _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg1_highlight");
               if(_loc3_ || Boolean(this))
               {
                  addr0081:
                  _loc2_.visualIcon = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_8_construction");
                  if(!(_loc4_ && Boolean(this)))
                  {
                     _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
                     if(_loc3_ || Boolean(param1))
                     {
                        _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.storageBook"),String("rcl.tooltips.storageBook.construction"));
                        if(_loc3_)
                        {
                           addr00e5:
                           _loc2_.type = ServerTagConstants.GOOD_CONSTRUCTION;
                           if(_loc3_)
                           {
                              this.entries.addItem(_loc2_);
                           }
                        }
                        _loc2_ = new SideMenueArchCategoryVO();
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg2");
                           if(_loc3_ || Boolean(this))
                           {
                              _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg2_highlight");
                              if(_loc3_)
                              {
                                 _loc2_.visualIcon = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_9_goods");
                                 if(_loc3_ || Boolean(_loc2_))
                                 {
                                    §§goto(addr016a);
                                 }
                                 §§goto(addr0190);
                              }
                              addr016a:
                              _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
                              if(!_loc4_)
                              {
                                 addr0182:
                                 _loc2_.type = ServerTagConstants.GOOD_NORMAL;
                                 if(!_loc4_)
                                 {
                                    _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.storageBook"),String("rcl.tooltips.storageBook.goods"));
                                    addr0190:
                                    if(_loc3_ || Boolean(this))
                                    {
                                       addr01c7:
                                       this.entries.addItem(_loc2_);
                                    }
                                 }
                              }
                              _loc2_ = new SideMenueArchCategoryVO();
                              if(_loc3_)
                              {
                                 _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg3");
                                 if(!(_loc4_ && Boolean(_loc2_)))
                                 {
                                    _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg3_highlight");
                                    if(_loc3_)
                                    {
                                       _loc2_.visualIcon = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_10_hip");
                                       if(_loc3_)
                                       {
                                          §§goto(addr022f);
                                       }
                                    }
                                    §§goto(addr0247);
                                 }
                                 §§goto(addr0282);
                              }
                              addr022f:
                              _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
                              if(!_loc4_)
                              {
                                 addr0247:
                                 _loc2_.type = ServerImprovementConstants.IMPROVEMENT;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    §§goto(addr025d);
                                 }
                                 §§goto(addr0282);
                              }
                              addr025d:
                              _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.storageBook"),String("rcl.tooltips.storageBook.hip"));
                              if(!_loc4_)
                              {
                                 addr0282:
                                 this.entries.addItem(_loc2_);
                              }
                              _loc2_ = new SideMenueArchCategoryVO();
                              if(_loc3_)
                              {
                                 _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg1");
                                 if(_loc3_ || Boolean(_loc2_))
                                 {
                                    _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg1_highlight");
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       _loc2_.visualIcon = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_7_special");
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§goto(addr02fa);
                                       }
                                       §§goto(addr0365);
                                    }
                                    §§goto(addr0311);
                                 }
                                 addr02fa:
                                 _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
                                 if(_loc3_)
                                 {
                                    addr0311:
                                    _loc2_.type = ServerTagConstants.GOOD_SPECIAL;
                                    if(_loc3_)
                                    {
                                       _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.storageBook"),String("rcl.tooltips.storageBook.special"));
                                       §§goto(addr031e);
                                    }
                                    §§goto(addr0365);
                                 }
                                 addr031e:
                                 if(!(_loc4_ && Boolean(_loc2_)))
                                 {
                                    this.entries.addItem(_loc2_);
                                    if(!_loc4_)
                                    {
                                       addr0365:
                                       facade.sendNotification(ApplicationNotificationConstants.STORAGE_SIDE_ENTRIES_AVAILABLE);
                                    }
                                 }
                                 §§goto(addr0370);
                              }
                              addr0370:
                              return;
                           }
                           §§goto(addr01c7);
                        }
                        §§goto(addr0182);
                     }
                  }
               }
            }
            §§goto(addr00e5);
         }
         §§goto(addr0081);
      }
      
      public function get entries() : ArrayList
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:SideMenueArchCategoryVO = null;
         for each(_loc1_ in super.data.source)
         {
            if(!(_loc5_ && Boolean(_loc1_)))
            {
               if(_loc1_.type == ServerImprovementConstants.IMPROVEMENT)
               {
                  if(!(_loc5_ && Boolean(_loc1_)))
                  {
                     _loc1_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.storageBook"),String("rcl.tooltips.storageBook.hip"));
                     if(_loc5_ && Boolean(_loc1_))
                     {
                        continue;
                     }
                  }
                  _loc1_.enable = true;
               }
            }
         }
         return super.data as ArrayList;
      }
      
      private function get featureProxy() : FeatureProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            §§push(this._fP);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     addr0043:
                     this._fP = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
                  }
               }
               return this._fP;
            }
         }
         §§goto(addr0043);
      }
   }
}

