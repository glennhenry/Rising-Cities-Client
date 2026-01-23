package net.bigpoint.cityrama.model.field.vo
{
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.ApplicationFacade;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldExpansionDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayfieldExpansionDTO;
   import net.bigpoint.cityrama.view.field.ground.ui.components.BgPrimitive;
   
   public class ExpansionFieldObjectVo extends BillboardObjectVo implements ILoggableObject
   {
      
      private var _dimensions:Cuboid;
      
      private var _gfxId:int;
      
      private var _localeId:int;
      
      private var _configOrigin:ConfigPlayfieldExpansionDTO;
      
      private var _origin:PlayfieldExpansionDTO;
      
      private var _config:ConfigPlayfieldItemDTO;
      
      private var _id:Number;
      
      private var _id_conf:Number;
      
      private var _locked:Boolean;
      
      private var _matrixCoordinates:Rectangle;
      
      private var _rollOverRect:BgPrimitive;
      
      private var _temporaryAdded:Vector.<IGameObjectVo>;
      
      public function ExpansionFieldObjectVo(param1:ConfigPlayfieldItemDTO, param2:Object = null, param3:Boolean = false)
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc4_:GameConfigProxy = null;
         if(!_loc6_)
         {
            this._matrixCoordinates = new Rectangle(0,0,0,0);
            if(!_loc6_)
            {
               super(param1);
               if(!(_loc6_ && Boolean(param1)))
               {
                  this._config = param1;
                  if(_loc7_)
                  {
                     if(param2 != null)
                     {
                        if(_loc7_)
                        {
                           this._locked = param3;
                           if(_loc7_ || Boolean(this))
                           {
                              addr0074:
                              this._dimensions = new Cuboid();
                              if(!(_loc6_ && Boolean(this)))
                              {
                                 addr008d:
                                 this._origin = new PlayfieldExpansionDTO(param2);
                                 if(_loc7_ || param3)
                                 {
                                    this._id = this._origin.id;
                                    if(!(_loc6_ && Boolean(param2)))
                                    {
                                       addr00bf:
                                       this._id_conf = this._origin.configId;
                                       if(!(_loc6_ && param3))
                                       {
                                          addr00d8:
                                          _loc4_ = GameConfigProxy(ApplicationFacade.getInstance().retrieveProxy(GameConfigProxy.NAME));
                                          if(_loc7_ || Boolean(param1))
                                          {
                                             this._configOrigin = _loc4_.config.playfieldsExpansions[this._id_conf];
                                             if(_loc7_ || param3)
                                             {
                                                this._matrixCoordinates.x = this._dimensions.x = this._configOrigin.px;
                                                if(!(_loc6_ && Boolean(param2)))
                                                {
                                                   addr0151:
                                                   this._matrixCoordinates.y = this._dimensions.y = this._configOrigin.py;
                                                   if(!(_loc6_ && Boolean(param1)))
                                                   {
                                                      this._dimensions.z = 1;
                                                      if(!(_loc6_ && Boolean(param1)))
                                                      {
                                                         this._matrixCoordinates.width = this._dimensions.width = this._configOrigin.sx;
                                                         if(!_loc6_)
                                                         {
                                                            §§goto(addr01b0);
                                                         }
                                                         §§goto(addr0203);
                                                      }
                                                      addr01b0:
                                                      this._matrixCoordinates.height = this._dimensions.height = this._configOrigin.sy;
                                                      if(_loc7_)
                                                      {
                                                         super.matrix3dCoordinates = this._dimensions;
                                                         if(_loc7_)
                                                         {
                                                            addr01de:
                                                            this._gfxId = this._configOrigin.gfx;
                                                            if(_loc7_ || Boolean(this))
                                                            {
                                                               addr0203:
                                                               this.provideConfigPlayfieldItemVO(param3);
                                                            }
                                                         }
                                                      }
                                                      addr020a:
                                                      this._config.virtualObjectOverride = ServerTagConstants.VIRTUAL_EXPANSION;
                                                      if(!(_loc6_ && Boolean(this)))
                                                      {
                                                         addr0224:
                                                         this._temporaryAdded = new Vector.<IGameObjectVo>();
                                                      }
                                                      §§goto(addr0233);
                                                   }
                                                }
                                                §§goto(addr0203);
                                             }
                                             §§goto(addr01de);
                                          }
                                          §§goto(addr0151);
                                       }
                                    }
                                    addr0233:
                                    return;
                                 }
                                 §§goto(addr00d8);
                              }
                              §§goto(addr0224);
                           }
                           §§goto(addr008d);
                        }
                        §§goto(addr0074);
                     }
                     §§goto(addr020a);
                  }
               }
            }
            §§goto(addr008d);
         }
         §§goto(addr00bf);
      }
      
      private function provideConfigPlayfieldItemVO(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._config = new ConfigPlayfieldItemDTO();
            if(_loc3_)
            {
               §§push(this._config);
               if(_loc3_)
               {
                  §§push(this._configOrigin);
                  if(_loc3_)
                  {
                     §§push(§§pop().id);
                     if(_loc3_ || _loc3_)
                     {
                        §§pop().id = §§pop();
                        if(_loc3_ || Boolean(this))
                        {
                           §§push(this._config);
                           if(_loc3_)
                           {
                              §§push(this._configOrigin);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§pop().gfxId = §§pop().gfx;
                                 if(!(_loc2_ && param1))
                                 {
                                    addr0084:
                                    §§push(this._config);
                                    if(_loc3_ || param1)
                                    {
                                       addr0095:
                                       §§push(this._configOrigin);
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          §§goto(addr00a6);
                                       }
                                       §§goto(addr0105);
                                    }
                                    §§goto(addr019b);
                                 }
                                 §§goto(addr0151);
                              }
                              addr00a6:
                              §§push(§§pop().sx);
                              if(_loc3_ || Boolean(this))
                              {
                                 addr00c3:
                                 §§pop().sizeX = §§pop();
                                 if(!(_loc2_ && param1))
                                 {
                                    §§push(this._config);
                                    if(!_loc2_)
                                    {
                                       §§push(this._configOrigin);
                                       if(!_loc2_)
                                       {
                                          §§goto(addr00e8);
                                       }
                                       §§goto(addr0105);
                                    }
                                    §§goto(addr0162);
                                 }
                                 §§goto(addr012f);
                              }
                              addr00e8:
                              §§pop().sizeY = §§pop().sy;
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(this._config);
                                 if(_loc3_)
                                 {
                                    addr0105:
                                    addr0101:
                                    §§push(this._configOrigin.preload);
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       §§pop().preload = §§pop();
                                       if(!_loc2_)
                                       {
                                          §§push(this._config);
                                          if(!_loc2_)
                                          {
                                             addr0127:
                                             §§pop().destroyable = false;
                                             addr0126:
                                             if(!_loc2_)
                                             {
                                                addr012f:
                                                §§push(this._config);
                                                if(_loc3_)
                                                {
                                                   §§push("swf/expansion/expansions.swf");
                                                   if(!_loc2_)
                                                   {
                                                      §§pop().animatedSwfPath = §§pop();
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         addr0151:
                                                         §§push(this._config);
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            addr0162:
                                                            §§push("PlayfieldExpansions");
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               §§pop().animatedSwfName = §§pop();
                                                               if(!(_loc2_ && _loc3_))
                                                               {
                                                                  addr018d:
                                                                  if(param1)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        addr019f:
                                                                        this._config.animatedSwfName = "PlayfieldExpansionsLocked";
                                                                        addr019b:
                                                                        addr0197:
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr01a2);
                                                            }
                                                            §§goto(addr019f);
                                                         }
                                                         §§goto(addr019b);
                                                      }
                                                      §§goto(addr0197);
                                                   }
                                                   §§goto(addr019f);
                                                }
                                                §§goto(addr019b);
                                             }
                                             §§goto(addr0197);
                                          }
                                          §§goto(addr0162);
                                       }
                                       §§goto(addr01a2);
                                    }
                                    §§goto(addr0127);
                                 }
                                 §§goto(addr0126);
                              }
                              §§goto(addr01a2);
                           }
                           §§goto(addr0101);
                        }
                        §§goto(addr018d);
                     }
                     §§goto(addr00c3);
                  }
                  §§goto(addr0105);
               }
               §§goto(addr0095);
            }
            §§goto(addr0084);
         }
         addr01a2:
      }
      
      public function get dimensions() : Cuboid
      {
         return this._dimensions;
      }
      
      public function get gfxId() : int
      {
         return this._gfxId;
      }
      
      public function get localeId() : int
      {
         return this._localeId;
      }
      
      public function get id_conf() : Number
      {
         return this._id_conf;
      }
      
      public function set id_conf(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._id_conf = param1;
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._id = param1;
         }
      }
      
      public function get configOrigin() : ConfigPlayfieldExpansionDTO
      {
         return this._configOrigin;
      }
      
      public function set configOrigin(param1:ConfigPlayfieldExpansionDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._configOrigin = param1;
         }
      }
      
      public function get config() : ConfigPlayfieldItemDTO
      {
         return this._config;
      }
      
      public function set config(param1:ConfigPlayfieldItemDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._config = param1;
         }
      }
      
      public function get origin() : PlayfieldExpansionDTO
      {
         return this._origin;
      }
      
      public function set origin(param1:PlayfieldExpansionDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._origin = param1;
         }
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      override public function get configPlayfieldItemVo() : ConfigPlayfieldItemDTO
      {
         return this._config;
      }
      
      override public function set configPlayfieldItemVo(param1:ConfigPlayfieldItemDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._config = param1;
         }
      }
      
      override public function get matrix3dCoordinates() : Cuboid
      {
         return this._dimensions;
      }
      
      override public function set matrix3dCoordinates(param1:Cuboid) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._dimensions = param1;
         }
      }
      
      override public function get matrixCoordinates() : Rectangle
      {
         return this._matrixCoordinates;
      }
      
      override public function set matrixCoordinates(param1:Rectangle) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._matrixCoordinates = param1;
         }
      }
      
      public function get locked() : Boolean
      {
         return this._locked;
      }
      
      public function get rollOverRect() : BgPrimitive
      {
         return this._rollOverRect;
      }
      
      public function set rollOverRect(param1:BgPrimitive) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._rollOverRect = param1;
         }
      }
      
      public function get temporaryAdded() : Vector.<IGameObjectVo>
      {
         return this._temporaryAdded;
      }
   }
}

