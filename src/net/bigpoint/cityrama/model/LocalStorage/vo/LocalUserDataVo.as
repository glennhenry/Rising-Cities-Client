package net.bigpoint.cityrama.model.LocalStorage.vo
{
   public class LocalUserDataVo
   {
      
      private var _viewedQuests:Vector.<Number>;
      
      private var _viewedPlayfieldItemConfigIds:Vector.<Number>;
      
      private var _viewedFriendListUserIDs:Vector.<Number>;
      
      private var _viewedNewsscreens:Vector.<LocalStorageNewsscreenVO>;
      
      private var _seenFeaturedEvents:Vector.<String>;
      
      private var _showEmergencyZoneLayer:Boolean = true;
      
      private var _lastViewedHeatMap:String = "";
      
      private var _tvCollapsed:Boolean;
      
      private var _inventoryMinimised:Boolean;
      
      private var _lastTimeUpsellWasShown:Number = 0;
      
      private var _lastTimeBonusDayWasShown:Number = 0;
      
      public function LocalUserDataVo(param1:Object = null)
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         if(!(_loc10_ && Boolean(param1)))
         {
            super();
            if(_loc9_)
            {
               this._viewedQuests = new Vector.<Number>();
               if(_loc9_ || Boolean(this))
               {
                  this._viewedPlayfieldItemConfigIds = new Vector.<Number>();
                  if(!(_loc10_ && Boolean(this)))
                  {
                     if(this._viewedFriendListUserIDs == null)
                     {
                        if(!(_loc10_ && Boolean(_loc2_)))
                        {
                           addr008b:
                           this._viewedFriendListUserIDs = new Vector.<Number>();
                           if(!_loc10_)
                           {
                              §§goto(addr009e);
                           }
                           §§goto(addr0106);
                        }
                        §§goto(addr00d7);
                     }
                     addr009e:
                     if(this._viewedNewsscreens == null)
                     {
                        if(_loc9_)
                        {
                           addr00ad:
                           this._viewedNewsscreens = new Vector.<LocalStorageNewsscreenVO>();
                           if(!(_loc10_ && Boolean(_loc3_)))
                           {
                              §§goto(addr00c9);
                           }
                           §§goto(addr0106);
                        }
                     }
                     §§goto(addr00c9);
                  }
                  §§goto(addr00ad);
               }
               addr00c9:
               if(!this._seenFeaturedEvents)
               {
                  if(!_loc10_)
                  {
                     addr00d7:
                     this._seenFeaturedEvents = new Vector.<String>();
                     if(_loc9_ || Boolean(_loc3_))
                     {
                        §§goto(addr00f2);
                     }
                     §§goto(addr0106);
                  }
               }
               §§goto(addr00f2);
            }
            addr00f2:
            if(param1 != null)
            {
               if(!(_loc10_ && Boolean(_loc2_)))
               {
                  addr0106:
                  if(param1.viewedQuests != null)
                  {
                     addr0110:
                     var _loc7_:* = 0;
                     var _loc8_:* = param1.viewedQuests;
                     while(true)
                     {
                        §§push(§§hasnext(_loc8_,_loc7_));
                        if(_loc9_ || Boolean(_loc3_))
                        {
                           if(§§pop())
                           {
                              _loc2_ = §§nextvalue(_loc7_,_loc8_);
                              if(!(_loc10_ && Boolean(this)))
                              {
                                 this._viewedQuests.push(_loc2_);
                              }
                              continue;
                           }
                           if(!(_loc10_ && Boolean(param1)))
                           {
                              if(_loc9_ || Boolean(_loc2_))
                              {
                                 if(!_loc10_)
                                 {
                                    addr0179:
                                    if(param1.viewedPlayfieldItemConfigIds != null)
                                    {
                                       if(_loc9_ || Boolean(param1))
                                       {
                                          §§push(0);
                                          if(_loc9_ || Boolean(_loc2_))
                                          {
                                             _loc7_ = §§pop();
                                             if(!(_loc10_ && Boolean(param1)))
                                             {
                                                _loc8_ = param1.viewedPlayfieldItemConfigIds;
                                                if(_loc9_ || Boolean(_loc2_))
                                                {
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc8_,_loc7_));
                                                      if(!_loc9_)
                                                      {
                                                         break;
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         if(!(_loc10_ && Boolean(_loc3_)))
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               if(_loc9_ || Boolean(this))
                                                               {
                                                                  addr021c:
                                                                  if(param1.viewedFriendListUserIDs != null)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        addr022c:
                                                                        §§push(0);
                                                                        if(!(_loc10_ && Boolean(_loc3_)))
                                                                        {
                                                                           addr023c:
                                                                           _loc7_ = §§pop();
                                                                           if(_loc9_ || Boolean(_loc3_))
                                                                           {
                                                                              _loc8_ = param1.viewedFriendListUserIDs;
                                                                              if(_loc9_ || Boolean(_loc3_))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§hasnext(_loc8_,_loc7_));
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       break loop8;
                                                                                    }
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          if(!(_loc10_ && Boolean(_loc2_)))
                                                                                          {
                                                                                             addr02b7:
                                                                                             if(!(_loc10_ && Boolean(param1)))
                                                                                             {
                                                                                                addr02c7:
                                                                                                if(param1.viewedNewsscreens != null)
                                                                                                {
                                                                                                   if(_loc9_ || Boolean(_loc3_))
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         addr02e7:
                                                                                                         _loc7_ = §§pop();
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            addr02ef:
                                                                                                            _loc8_ = param1.viewedNewsscreens;
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§hasnext(_loc8_,_loc7_));
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  break loop8;
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            while(§§pop())
                                                                                                            {
                                                                                                               _loc6_ = §§nextvalue(_loc7_,_loc8_);
                                                                                                               if(!(_loc10_ && Boolean(param1)))
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this._seenFeaturedEvents.push(_loc6_);
                                                                                                                  }
                                                                                                                  addr0389:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§hasnext(_loc8_,_loc7_));
                                                                                                                  break;
                                                                                                               }
                                                                                                            }
                                                                                                            addr039b:
                                                                                                            if(_loc9_ || Boolean(_loc3_))
                                                                                                            {
                                                                                                               addr03ab:
                                                                                                               if(param1.showEmergencyZoneLayer != null)
                                                                                                               {
                                                                                                                  if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                                  {
                                                                                                                     this._showEmergencyZoneLayer = param1.showEmergencyZoneLayer;
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        addr03d2:
                                                                                                                        if(param1.lastViewedHeatMap != null)
                                                                                                                        {
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              this._lastViewedHeatMap = param1.lastViewedHeatMap;
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 addr03f1:
                                                                                                                                 if(param1.tvCollapsed != null)
                                                                                                                                 {
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       addr0401:
                                                                                                                                       this._tvCollapsed = param1.tvCollapsed;
                                                                                                                                       if(_loc9_ || Boolean(param1))
                                                                                                                                       {
                                                                                                                                          addr0418:
                                                                                                                                          if(param1.inventoryMinimised != null)
                                                                                                                                          {
                                                                                                                                             if(_loc9_ || Boolean(_loc3_))
                                                                                                                                             {
                                                                                                                                                addr0430:
                                                                                                                                                this._inventoryMinimised = param1.inventoryMinimised;
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   addr043f:
                                                                                                                                                   if(param1.lastTimeUpsellWasShown != null)
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         addr044f:
                                                                                                                                                         this._lastTimeUpsellWasShown = param1.lastTimeUpsellWasShown;
                                                                                                                                                         if(_loc9_ || Boolean(_loc3_))
                                                                                                                                                         {
                                                                                                                                                            addr0466:
                                                                                                                                                            if(isNaN(this._lastTimeUpsellWasShown))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc10_ && Boolean(this)))
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr0483);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr04e1);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr048f);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0483);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr048f);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0466);
                                                                                                                                          }
                                                                                                                                          §§goto(addr043f);
                                                                                                                                       }
                                                                                                                                       §§goto(addr044f);
                                                                                                                                    }
                                                                                                                                    §§goto(addr04cc);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0418);
                                                                                                                              }
                                                                                                                              addr0483:
                                                                                                                              this._lastTimeUpsellWasShown = 0;
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 addr048f:
                                                                                                                                 if(param1.lastTimeBonusDayWasShown != null)
                                                                                                                                 {
                                                                                                                                    if(_loc9_ || Boolean(_loc3_))
                                                                                                                                    {
                                                                                                                                       this._lastTimeBonusDayWasShown = param1.lastTimeBonusDayWasShown;
                                                                                                                                       if(_loc9_ || Boolean(_loc2_))
                                                                                                                                       {
                                                                                                                                          addr04cc:
                                                                                                                                          if(isNaN(this._lastTimeBonusDayWasShown))
                                                                                                                                          {
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                addr04e1:
                                                                                                                                                this._lastTimeBonusDayWasShown = 0;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr04e7);
                                                                                                                           }
                                                                                                                           §§goto(addr0430);
                                                                                                                        }
                                                                                                                        §§goto(addr03f1);
                                                                                                                     }
                                                                                                                     §§goto(addr0430);
                                                                                                                  }
                                                                                                                  §§goto(addr04e1);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr03d2);
                                                                                                            addr0399:
                                                                                                            addr0395:
                                                                                                         }
                                                                                                         addr0336:
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            addr033e:
                                                                                                            if(param1.seenFeaturedEvents != null)
                                                                                                            {
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  addr0350:
                                                                                                                  _loc7_ = 0;
                                                                                                                  if(_loc9_ || Boolean(_loc3_))
                                                                                                                  {
                                                                                                                     addr0360:
                                                                                                                     _loc8_ = param1.seenFeaturedEvents;
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        §§goto(addr0392);
                                                                                                                     }
                                                                                                                     §§goto(addr0389);
                                                                                                                  }
                                                                                                                  §§goto(addr039b);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr03ab);
                                                                                                         }
                                                                                                         §§goto(addr048f);
                                                                                                      }
                                                                                                      §§goto(addr0350);
                                                                                                   }
                                                                                                   §§goto(addr0418);
                                                                                                }
                                                                                                §§goto(addr033e);
                                                                                             }
                                                                                             §§goto(addr043f);
                                                                                          }
                                                                                          §§goto(addr0360);
                                                                                       }
                                                                                       addr032e:
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          §§goto(addr0336);
                                                                                       }
                                                                                       §§goto(addr0360);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       _loc4_ = §§nextvalue(_loc7_,_loc8_);
                                                                                       if(!(_loc9_ || Boolean(param1)))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                                 addr0294:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this._viewedFriendListUserIDs.push(_loc4_);
                                                                                 §§goto(addr0294);
                                                                              }
                                                                           }
                                                                           §§goto(addr02ef);
                                                                        }
                                                                        §§goto(addr02e7);
                                                                     }
                                                                  }
                                                                  §§goto(addr02c7);
                                                               }
                                                               §§goto(addr0418);
                                                            }
                                                            §§goto(addr039b);
                                                         }
                                                         §§goto(addr0399);
                                                      }
                                                      else
                                                      {
                                                         _loc3_ = §§nextvalue(_loc7_,_loc8_);
                                                         if(!(_loc9_ || Boolean(_loc2_)))
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                   }
                                                   do
                                                   {
                                                      if(§§pop())
                                                      {
                                                         _loc5_ = §§nextvalue(_loc7_,_loc8_);
                                                         if(_loc9_)
                                                         {
                                                            this._viewedNewsscreens.push(new LocalStorageNewsscreenVO(_loc5_));
                                                         }
                                                         continue;
                                                      }
                                                      if(_loc9_)
                                                      {
                                                         §§goto(addr032e);
                                                      }
                                                      §§goto(addr0399);
                                                   }
                                                   while(§§push(§§hasnext(_loc8_,_loc7_)), !_loc10_);
                                                   
                                                   §§goto(addr0395);
                                                   addr01e9:
                                                }
                                                while(true)
                                                {
                                                   this._viewedPlayfieldItemConfigIds.push(_loc3_);
                                                   §§goto(addr01e9);
                                                }
                                             }
                                             §§goto(addr0336);
                                          }
                                          §§goto(addr023c);
                                       }
                                       §§goto(addr0401);
                                    }
                                    §§goto(addr021c);
                                 }
                                 §§goto(addr022c);
                              }
                              §§goto(addr02b7);
                           }
                           §§goto(addr032e);
                        }
                        §§goto(addr0395);
                     }
                  }
                  §§goto(addr0179);
               }
               §§goto(addr0110);
            }
            addr04e7:
            return;
         }
         §§goto(addr008b);
      }
      
      public function get viewedQuests() : Vector.<Number>
      {
         return this._viewedQuests;
      }
      
      public function set viewedQuests(param1:Vector.<Number>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._viewedQuests = param1;
         }
      }
      
      public function get viewedPlayfieldItemConfigIds() : Vector.<Number>
      {
         return this._viewedPlayfieldItemConfigIds;
      }
      
      public function set viewedPlayfieldItemConfigIds(param1:Vector.<Number>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._viewedPlayfieldItemConfigIds = param1;
         }
      }
      
      public function get viewedFriendListUserIDs() : Vector.<Number>
      {
         return this._viewedFriendListUserIDs;
      }
      
      public function set viewedFriendListUserIDs(param1:Vector.<Number>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._viewedFriendListUserIDs = param1;
         }
      }
      
      public function get viewedNewsscreens() : Vector.<LocalStorageNewsscreenVO>
      {
         return this._viewedNewsscreens;
      }
      
      public function set viewedNewsscreens(param1:Vector.<LocalStorageNewsscreenVO>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._viewedNewsscreens = param1;
         }
      }
      
      public function get showEmergencyZoneLayer() : Boolean
      {
         return this._showEmergencyZoneLayer;
      }
      
      public function set showEmergencyZoneLayer(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && param1))
         {
            this._showEmergencyZoneLayer = param1;
         }
      }
      
      public function get lastViewedHeatMap() : String
      {
         return this._lastViewedHeatMap;
      }
      
      public function set lastViewedHeatMap(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._lastViewedHeatMap = param1;
         }
      }
      
      public function get tvCollapsed() : Boolean
      {
         return this._tvCollapsed;
      }
      
      public function set tvCollapsed(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._tvCollapsed = param1;
         }
      }
      
      public function get inventoryMinimised() : Boolean
      {
         return this._inventoryMinimised;
      }
      
      public function set inventoryMinimised(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._inventoryMinimised = param1;
         }
      }
      
      public function get seenFeaturedEvents() : Vector.<String>
      {
         return this._seenFeaturedEvents;
      }
      
      public function set seenFeaturedEvents(param1:Vector.<String>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._seenFeaturedEvents = param1;
         }
      }
      
      public function get lastTimeUpsellWasShown() : Number
      {
         return this._lastTimeUpsellWasShown;
      }
      
      public function set lastTimeUpsellWasShown(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._lastTimeUpsellWasShown = param1;
         }
      }
      
      public function get lastTimeBonusDayWasShown() : Number
      {
         return this._lastTimeBonusDayWasShown;
      }
      
      public function set lastTimeBonusDayWasShown(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._lastTimeBonusDayWasShown = param1;
         }
      }
   }
}

