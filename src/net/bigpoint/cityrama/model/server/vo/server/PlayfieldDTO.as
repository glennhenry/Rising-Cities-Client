package net.bigpoint.cityrama.model.server.vo.server
{
   import flash.utils.Dictionary;
   import mx.logging.LogEventLevel;
   import net.bigpoint.cityrama.model.field.vo.ExpansionFieldObjectVo;
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   
   public class PlayfieldDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _configId:Number;
      
      private var _sizeX:Number;
      
      private var _sizeY:Number;
      
      private var _startX:Number;
      
      private var _startY:Number;
      
      private var _buildings:Vector.<BuildingDTO>;
      
      private var _decorations:Vector.<DecorationVo>;
      
      private var _boulders:Vector.<BoulderVo>;
      
      private var _grounds:Vector.<GroundDTO>;
      
      private var _resources:Dictionary;
      
      private var _expansions:Vector.<ExpansionFieldObjectVo>;
      
      private var _expansionsBuyable:Vector.<ExpansionFieldObjectVo>;
      
      private var _buffs:Vector.<PhaseDTO>;
      
      private var _config:ConfigPlayfieldDTO;
      
      public function PlayfieldDTO(param1:Object, param2:ConfigPlayfieldDTO, param3:Vector.<BuildingDTO>, param4:Vector.<DecorationVo>, param5:Vector.<GroundDTO>)
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc9_:ExpansionFieldObjectVo = null;
         var _loc10_:ResourceDTO = null;
         if(!(_loc13_ && Boolean(param3)))
         {
            super();
            if(_loc14_ || Boolean(this))
            {
               this._id = param1.id;
               if(_loc14_ || Boolean(param2))
               {
                  this._configId = param1.c;
                  if(_loc14_ || Boolean(this))
                  {
                     addr007e:
                     this._sizeX = param1.x;
                     if(_loc14_ || Boolean(param1))
                     {
                        addr0095:
                        this._sizeY = param1.y;
                        if(_loc14_)
                        {
                           this._startX = param1.sx;
                           if(_loc14_)
                           {
                              this._startY = param1.sy;
                              if(_loc14_ || Boolean(param2))
                              {
                                 this._buildings = param3;
                                 if(_loc14_ || Boolean(param3))
                                 {
                                    addr00dd:
                                    this._decorations = param4;
                                    if(_loc14_ || Boolean(this))
                                    {
                                       this._grounds = param5;
                                       if(!(_loc13_ && Boolean(this)))
                                       {
                                          this._config = param2;
                                          if(!_loc13_)
                                          {
                                             addr0110:
                                             this._expansions = new Vector.<ExpansionFieldObjectVo>();
                                          }
                                          addr011f:
                                          var _loc11_:* = 0;
                                          var _loc12_:* = param1.pe;
                                          loop0:
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc12_,_loc11_));
                                             if(_loc13_ && Boolean(param2))
                                             {
                                                break;
                                             }
                                             if(§§pop())
                                             {
                                                _loc6_ = §§nextvalue(_loc11_,_loc12_);
                                                _loc9_ = new ExpansionFieldObjectVo(null,_loc6_);
                                                _loc9_.log(LogEventLevel.WARN,1);
                                                if(_loc14_ || Boolean(param2))
                                                {
                                                   this._expansions.push(_loc9_);
                                                }
                                                continue;
                                             }
                                             if(!(_loc13_ && Boolean(param2)))
                                             {
                                                if(_loc14_)
                                                {
                                                   if(_loc14_)
                                                   {
                                                      this._boulders = new Vector.<BoulderVo>();
                                                      if(_loc14_)
                                                      {
                                                         §§push(0);
                                                         if(!(_loc13_ && Boolean(param1)))
                                                         {
                                                            _loc11_ = §§pop();
                                                            if(!_loc13_)
                                                            {
                                                               _loc12_ = param1.bo;
                                                               while(true)
                                                               {
                                                                  §§push(§§hasnext(_loc12_,_loc11_));
                                                                  if(_loc14_)
                                                                  {
                                                                     break loop0;
                                                                  }
                                                                  addr02aa:
                                                                  loop2:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        _loc7_ = §§nextvalue(_loc11_,_loc12_);
                                                                        _loc10_ = ConfigFactory.buildResourceDTO(_loc7_);
                                                                        if(_loc14_)
                                                                        {
                                                                           this._resources[_loc10_.configId] = _loc10_;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§hasnext(_loc12_,_loc11_));
                                                                           if(!_loc14_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                        break;
                                                                        addr02a1:
                                                                     }
                                                                     if(!(_loc13_ && Boolean(param3)))
                                                                     {
                                                                        if(_loc14_)
                                                                        {
                                                                           if(!(_loc13_ && Boolean(this)))
                                                                           {
                                                                              this._buffs = new Vector.<PhaseDTO>();
                                                                              if(_loc14_ || Boolean(param3))
                                                                              {
                                                                                 addr02f3:
                                                                                 _loc11_ = 0;
                                                                                 addr02f1:
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    _loc12_ = param1.bg;
                                                                                    addr02fb:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§hasnext(_loc12_,_loc11_));
                                                                                       break loop2;
                                                                                    }
                                                                                    addr033d:
                                                                                    addr0336:
                                                                                 }
                                                                                 addr033f:
                                                                              }
                                                                              return;
                                                                           }
                                                                           §§goto(addr02f1);
                                                                        }
                                                                        §§goto(addr02fb);
                                                                     }
                                                                     §§goto(addr033d);
                                                                  }
                                                                  while(§§pop())
                                                                  {
                                                                     _loc8_ = §§nextvalue(_loc11_,_loc12_);
                                                                     if(!_loc13_)
                                                                     {
                                                                        this._buffs.push(new PhaseDTO(_loc8_,null));
                                                                     }
                                                                     §§goto(addr0336);
                                                                  }
                                                                  §§goto(addr033d);
                                                               }
                                                               addr020e:
                                                            }
                                                            addr0231:
                                                            if(!_loc13_)
                                                            {
                                                               this._resources = new Dictionary();
                                                               if(_loc14_ || Boolean(param1))
                                                               {
                                                                  §§push(0);
                                                                  if(!_loc13_)
                                                                  {
                                                                     _loc11_ = §§pop();
                                                                     if(_loc14_ || Boolean(param3))
                                                                     {
                                                                        addr0268:
                                                                        _loc12_ = param1.r;
                                                                        §§goto(addr02a1);
                                                                     }
                                                                     §§goto(addr02fb);
                                                                  }
                                                                  §§goto(addr02f3);
                                                               }
                                                            }
                                                            §§goto(addr02f1);
                                                         }
                                                         §§goto(addr02f3);
                                                      }
                                                   }
                                                   §§goto(addr02f1);
                                                }
                                                §§goto(addr0268);
                                             }
                                             if(_loc14_ || Boolean(this))
                                             {
                                                §§goto(addr0231);
                                             }
                                             §§goto(addr033f);
                                          }
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc14_)
                                                {
                                                   §§goto(addr0221);
                                                }
                                                §§goto(addr033d);
                                             }
                                             else
                                             {
                                                _loc6_ = §§nextvalue(_loc11_,_loc12_);
                                                if(_loc14_ || Boolean(this))
                                                {
                                                   this._boulders.push(ConfigFactory.buildBoulderVo(_loc6_));
                                                }
                                                §§goto(addr020e);
                                             }
                                          }
                                          §§goto(addr02aa);
                                       }
                                    }
                                 }
                                 §§goto(addr0110);
                              }
                           }
                        }
                        §§goto(addr00dd);
                     }
                     §§goto(addr0110);
                  }
                  §§goto(addr011f);
               }
               §§goto(addr0110);
            }
            §§goto(addr007e);
         }
         §§goto(addr0095);
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._id = param1;
         }
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function set configId(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._configId = param1;
         }
      }
      
      public function get sizeX() : Number
      {
         return this._sizeX;
      }
      
      public function set sizeX(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._sizeX = param1;
         }
      }
      
      public function get sizeY() : Number
      {
         return this._sizeY;
      }
      
      public function set sizeY(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._sizeY = param1;
         }
      }
      
      public function get buildings() : Vector.<BuildingDTO>
      {
         return this._buildings;
      }
      
      public function set buildings(param1:Vector.<BuildingDTO>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._buildings = param1;
         }
      }
      
      public function get boulders() : Vector.<BoulderVo>
      {
         return this._boulders;
      }
      
      public function set boulders(param1:Vector.<BoulderVo>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._boulders = param1;
         }
      }
      
      public function get grounds() : Vector.<GroundDTO>
      {
         return this._grounds;
      }
      
      public function set grounds(param1:Vector.<GroundDTO>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._grounds = param1;
         }
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
         if(!(_loc2_ && _loc2_))
         {
            this._resources = param1;
         }
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get startX() : Number
      {
         return this._startX;
      }
      
      public function set startX(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._startX = param1;
         }
      }
      
      public function get startY() : Number
      {
         return this._startY;
      }
      
      public function set startY(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._startY = param1;
         }
      }
      
      public function get decorations() : Vector.<DecorationVo>
      {
         return this._decorations;
      }
      
      public function set decorations(param1:Vector.<DecorationVo>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._decorations = param1;
         }
      }
      
      public function get expansions() : Vector.<ExpansionFieldObjectVo>
      {
         return this._expansions;
      }
      
      public function get expansionsBuyable() : Vector.<ExpansionFieldObjectVo>
      {
         return this._expansionsBuyable;
      }
      
      public function set expansionsBuyable(param1:Vector.<ExpansionFieldObjectVo>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._expansionsBuyable = param1;
         }
      }
      
      public function get buffs() : Vector.<PhaseDTO>
      {
         return this._buffs;
      }
      
      public function get config() : ConfigPlayfieldDTO
      {
         return this._config;
      }
   }
}

