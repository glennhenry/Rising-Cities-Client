package net.bigpoint.cityrama.model.server.vo.server
{
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   
   public class CityDTO
   {
      
      private var _id:Number;
      
      private var _name:String;
      
      private var _playfields:Vector.<PlayfieldLightVo>;
      
      private var _resources:Dictionary;
      
      private var _phases:Vector.<PhaseDTO>;
      
      private var _cityWheel:CityWheelDTO;
      
      private var _cinema:CinemaDTO;
      
      private var _improvements:Vector.<ImprovementDTO>;
      
      public function CityDTO(param1:Object)
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:ResourceDTO = null;
         if(!_loc10_)
         {
            super();
            if(!(_loc10_ && Boolean(param1)))
            {
               addr0043:
               this._id = param1.id;
               if(_loc9_)
               {
                  addr0053:
                  this._name = param1.n;
                  if(!_loc10_)
                  {
                     addr0063:
                     this._playfields = new Vector.<PlayfieldLightVo>();
                  }
                  var _loc7_:* = 0;
                  var _loc8_:* = param1.p;
                  loop0:
                  while(true)
                  {
                     §§push(§§hasnext(_loc8_,_loc7_));
                     if(!_loc9_)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        _loc2_ = §§nextvalue(_loc7_,_loc8_);
                        if(_loc9_ || Boolean(param1))
                        {
                           this._playfields.push(new PlayfieldLightVo(_loc2_));
                        }
                        continue;
                     }
                     if(_loc9_)
                     {
                        if(!_loc10_)
                        {
                           if(!_loc10_)
                           {
                              this._resources = new Dictionary();
                              if(_loc9_)
                              {
                                 addr00d9:
                                 §§push(0);
                                 if(!_loc10_)
                                 {
                                    _loc7_ = §§pop();
                                    if(_loc9_)
                                    {
                                       _loc8_ = param1.r;
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc8_,_loc7_));
                                          if(_loc9_)
                                          {
                                             break loop0;
                                          }
                                          addr02b7:
                                          §§goto(addr02bd);
                                       }
                                       addr0120:
                                    }
                                    addr0288:
                                    _loc8_ = param1.imp;
                                    §§goto(addr02b4);
                                 }
                                 addr018b:
                                 _loc7_ = §§pop();
                                 if(_loc9_ || Boolean(_loc2_))
                                 {
                                    _loc8_ = param1.ph;
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc8_,_loc7_));
                                       if(!(_loc10_ && Boolean(this)))
                                       {
                                          if(§§pop())
                                          {
                                             _loc4_ = §§nextvalue(_loc7_,_loc8_);
                                             if(_loc9_)
                                             {
                                                this._phases.push(new PhaseDTO(_loc4_,null));
                                             }
                                             continue;
                                          }
                                          if(_loc9_ || Boolean(_loc2_))
                                          {
                                             if(_loc9_)
                                             {
                                                addr01f3:
                                                if(_loc9_ || Boolean(_loc2_))
                                                {
                                                   addr0203:
                                                   if(param1.w != null)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         addr0213:
                                                         this._cityWheel = new CityWheelDTO(param1.w);
                                                         if(!_loc10_)
                                                         {
                                                            addr0229:
                                                            if(param1.c)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  addr0238:
                                                                  this._cinema = new CinemaDTO(param1.c);
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr024e:
                                                                     this._improvements = new Vector.<ImprovementDTO>();
                                                                     if(_loc9_ || Boolean(_loc2_))
                                                                     {
                                                                        addr026c:
                                                                        _loc7_ = 0;
                                                                        if(!(_loc10_ && Boolean(_loc3_)))
                                                                        {
                                                                           §§goto(addr0288);
                                                                        }
                                                                        §§goto(addr02bd);
                                                                     }
                                                                  }
                                                                  §§goto(addr02bd);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr024e);
                                                      }
                                                      §§goto(addr02bd);
                                                   }
                                                   §§goto(addr0229);
                                                }
                                                §§goto(addr0238);
                                             }
                                             §§goto(addr0288);
                                          }
                                          §§goto(addr02bd);
                                       }
                                       §§goto(addr02b7);
                                    }
                                 }
                                 §§goto(addr0288);
                              }
                              §§goto(addr0213);
                           }
                           §§goto(addr00d9);
                        }
                        §§goto(addr02bd);
                     }
                     if(_loc9_ || Boolean(_loc2_))
                     {
                        if(_loc9_)
                        {
                           this._phases = new Vector.<PhaseDTO>();
                           if(_loc9_ || Boolean(_loc3_))
                           {
                              §§push(0);
                              if(!(_loc10_ && Boolean(_loc2_)))
                              {
                                 §§goto(addr018b);
                              }
                              §§goto(addr026c);
                           }
                           §§goto(addr0203);
                        }
                        §§goto(addr024e);
                     }
                     §§goto(addr01f3);
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc10_ && Boolean(param1)))
                        {
                           §§goto(addr013b);
                        }
                        addr02bd:
                        loop3:
                        while(§§pop())
                        {
                           _loc5_ = §§nextvalue(_loc7_,_loc8_);
                           if(_loc9_)
                           {
                              this._improvements.push(new ImprovementDTO(_loc5_));
                           }
                           while(true)
                           {
                              §§push(§§hasnext(_loc8_,_loc7_));
                              continue loop3;
                           }
                           break;
                        }
                        addr02bd:
                        return;
                     }
                     _loc3_ = §§nextvalue(_loc7_,_loc8_);
                     _loc6_ = ConfigFactory.buildResourceDTO(_loc3_);
                     if(!_loc10_)
                     {
                        this._resources[_loc6_.configId] = _loc6_;
                     }
                     §§goto(addr0120);
                  }
                  §§goto(addr02b7);
               }
               §§goto(addr0063);
            }
            §§goto(addr0053);
         }
         §§goto(addr0043);
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get resources() : Dictionary
      {
         return this._resources;
      }
      
      public function set resources(param1:Dictionary) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._resources = param1;
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get phases() : Vector.<PhaseDTO>
      {
         return this._phases;
      }
      
      public function get playfields() : Vector.<PlayfieldLightVo>
      {
         return this._playfields;
      }
      
      public function get cityWheel() : CityWheelDTO
      {
         return this._cityWheel;
      }
      
      public function set cityWheel(param1:CityWheelDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._cityWheel = param1;
         }
      }
      
      public function get cinema() : CinemaDTO
      {
         return this._cinema;
      }
      
      public function set cinema(param1:CinemaDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._cinema = param1;
         }
      }
      
      public function get improvements() : Vector.<ImprovementDTO>
      {
         return this._improvements;
      }
   }
}

