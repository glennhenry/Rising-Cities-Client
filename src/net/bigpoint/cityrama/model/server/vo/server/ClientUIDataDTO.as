package net.bigpoint.cityrama.model.server.vo.server
{
   public class ClientUIDataDTO
   {
      
      private var _lowTraffic:Boolean = false;
      
      private var _lowGraphicsQuality:Boolean = false;
      
      private var _increasingTips:Boolean = true;
      
      private var _increasingSimbols:Boolean = true;
      
      private var _fasterNotification:Boolean = false;
      
      private var _fullscreenActive:Boolean = false;
      
      private var _soundActive:Boolean = true;
      
      private var _rcVerification:Boolean = false;
      
      private var _viewedPlayfieldItemConfigIds:Vector.<Number>;
      
      private var _viewedQuests:Vector.<Number>;
      
      public function ClientUIDataDTO(param1:Object)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(!(_loc5_ && Boolean(this)))
         {
            super();
            if(_loc4_ || Boolean(param1))
            {
               if(param1.lowTrf)
               {
                  if(!_loc5_)
                  {
                     this._lowTraffic = param1.lowTrf;
                     if(_loc4_)
                     {
                        addr005b:
                        if(param1.lowGq)
                        {
                           if(!(_loc5_ && Boolean(_loc3_)))
                           {
                              this._lowGraphicsQuality = param1.lowGq;
                              if(!(_loc5_ && Boolean(this)))
                              {
                                 addr0089:
                                 if(param1.hasOwnProperty("hTips"))
                                 {
                                    if(_loc4_ || Boolean(this))
                                    {
                                       this._increasingTips = param1.hTips;
                                       if(_loc4_)
                                       {
                                          addr00b2:
                                          if(param1.hasOwnProperty("hFloater"))
                                          {
                                             if(_loc4_)
                                             {
                                                addr00c4:
                                                this._increasingSimbols = param1.hFloater;
                                                if(!(_loc5_ && Boolean(_loc2_)))
                                                {
                                                   addr00db:
                                                   if(param1.fastIlayer)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         addr00ea:
                                                         this._fasterNotification = param1.fastIlayer;
                                                         if(_loc4_ || Boolean(this))
                                                         {
                                                            addr0101:
                                                            if(param1.fsOn)
                                                            {
                                                               if(_loc4_ || Boolean(param1))
                                                               {
                                                                  addr0118:
                                                                  this._fullscreenActive = param1.fsOn;
                                                                  if(_loc4_)
                                                                  {
                                                                     addr0127:
                                                                     if(param1.hasOwnProperty("soundOn"))
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           addr0139:
                                                                           this._soundActive = param1.soundOn;
                                                                           if(_loc4_)
                                                                           {
                                                                              addr0154:
                                                                              if(param1.rc)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    this._rcVerification = param1.rc;
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       addr0172:
                                                                                       if(param1.vpi)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             this._viewedPlayfieldItemConfigIds = new Vector.<Number>();
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr0194:
                                                                                                _loc2_ = 0;
                                                                                             }
                                                                                          }
                                                                                          loop0:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             if(!(_loc4_ || Boolean(this)))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() >= (param1.vpi as Array).length)
                                                                                                {
                                                                                                   if(_loc5_ && Boolean(this))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(param1.vq)
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         this._viewedQuests = new Vector.<Number>();
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(0);
                                                                                                         if(!(_loc5_ && Boolean(this)))
                                                                                                         {
                                                                                                            addr0245:
                                                                                                            _loc3_ = §§pop();
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_);
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + 1);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(_loc4_ || Boolean(_loc2_))
                                                                                                                     {
                                                                                                                        break loop0;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               break loop0;
                                                                                                            }
                                                                                                            addr02aa:
                                                                                                            return;
                                                                                                            addr027d:
                                                                                                         }
                                                                                                         while(§§pop() < (param1.vq as Array).length)
                                                                                                         {
                                                                                                            this._viewedQuests.push(param1.vq[_loc3_]);
                                                                                                            if(_loc5_ && Boolean(_loc2_))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr02aa);
                                                                                                      }
                                                                                                      §§goto(addr027d);
                                                                                                   }
                                                                                                   §§goto(addr02aa);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   this._viewedPlayfieldItemConfigIds.push(param1.vpi[_loc2_]);
                                                                                                   if(!(_loc4_ || Boolean(_loc2_)))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(_loc2_);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§push(§§pop() + 1);
                                                                                                   if(!(_loc5_ && Boolean(param1)))
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         _loc2_ = §§pop();
                                                                                                         if(_loc4_ || Boolean(_loc3_))
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr0245);
                                                                                                      }
                                                                                                      §§goto(addr02aa);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr0285);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr029c);
                                                                                                break loop0;
                                                                                             }
                                                                                             §§goto(addr02aa);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr029b);
                                                                                          }
                                                                                          §§goto(addr02aa);
                                                                                          addr01e7:
                                                                                       }
                                                                                       §§goto(addr0211);
                                                                                    }
                                                                                    §§goto(addr01e7);
                                                                                 }
                                                                                 §§goto(addr0194);
                                                                              }
                                                                              §§goto(addr0172);
                                                                           }
                                                                           §§goto(addr01e7);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr0154);
                                                               }
                                                               §§goto(addr0172);
                                                            }
                                                            §§goto(addr0127);
                                                         }
                                                         §§goto(addr0139);
                                                      }
                                                      §§goto(addr0127);
                                                   }
                                                   §§goto(addr0101);
                                                }
                                                §§goto(addr00ea);
                                             }
                                             §§goto(addr0127);
                                          }
                                          §§goto(addr00db);
                                       }
                                    }
                                    §§goto(addr0118);
                                 }
                                 §§goto(addr00b2);
                              }
                              §§goto(addr0139);
                           }
                           §§goto(addr0127);
                        }
                        §§goto(addr0089);
                     }
                     §§goto(addr0127);
                  }
                  §§goto(addr0118);
               }
               §§goto(addr005b);
            }
            §§goto(addr00c4);
         }
         §§goto(addr00db);
      }
      
      public function get lowTraffic() : Boolean
      {
         return this._lowTraffic;
      }
      
      public function set lowTraffic(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._lowTraffic = param1;
         }
      }
      
      public function get lowGraphicsQuality() : Boolean
      {
         return this._lowGraphicsQuality;
      }
      
      public function set lowGraphicsQuality(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._lowGraphicsQuality = param1;
         }
      }
      
      public function get increasingTips() : Boolean
      {
         return this._increasingTips;
      }
      
      public function set increasingTips(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._increasingTips = param1;
         }
      }
      
      public function get increasingSimbols() : Boolean
      {
         return this._increasingSimbols;
      }
      
      public function set increasingSimbols(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._increasingSimbols = param1;
         }
      }
      
      public function get fasterNotification() : Boolean
      {
         return this._fasterNotification;
      }
      
      public function set fasterNotification(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._fasterNotification = param1;
         }
      }
      
      public function get fullscreenActive() : Boolean
      {
         return this._fullscreenActive;
      }
      
      public function set fullscreenActive(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || param1)
         {
            this._fullscreenActive = param1;
         }
      }
      
      public function get soundActive() : Boolean
      {
         return this._soundActive;
      }
      
      public function set soundActive(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._soundActive = param1;
         }
      }
      
      public function get rcVerification() : Boolean
      {
         return this._rcVerification;
      }
      
      public function set rcVerification(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._rcVerification = param1;
         }
      }
      
      public function get viewedPlayfieldItemConfigIds() : Vector.<Number>
      {
         return this._viewedPlayfieldItemConfigIds;
      }
      
      public function set viewedPlayfieldItemConfigIds(param1:Vector.<Number>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._viewedPlayfieldItemConfigIds = param1;
         }
      }
      
      public function get viewedQuest() : Vector.<Number>
      {
         return this._viewedQuests;
      }
      
      public function set viewedQuest(param1:Vector.<Number>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._viewedQuests = param1;
         }
      }
   }
}

