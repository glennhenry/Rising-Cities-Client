package net.bigpoint.cityrama.model.buffSystem
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.model.common.ArrayMatrix;
   import net.bigpoint.cityrama.model.common.ArrayMatrix3D;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ShopFieldObjectVo;
   import net.bigpoint.cityrama.model.shop.NeedVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class NeedMatrixProxy extends Proxy
   {
      
      public static const NAME:String = "NeedMatrixProxy";
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _buffMatrix:ArrayMatrix3D;
      
      private var _residentialMatrix:ArrayMatrix;
      
      public function NeedMatrixProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         this._playfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         this.reset();
      }
      
      public function removeShop(param1:ShopFieldObject) : void
      {
         this.removeNeedProviderByRect(param1.shopFieldObjectVo.buildingDTO.id,this.calculateSatisfyRectByShop(param1.shopFieldObjectVo));
      }
      
      public function addShop(param1:ShopFieldObject) : void
      {
         this.addNeedProvider(param1.shopFieldObjectVo,this.calculateSatisfyRectByShop(param1.shopFieldObjectVo));
      }
      
      private function addNeedProvider(param1:ShopFieldObjectVo, param2:Rectangle) : void
      {
         this._buffMatrix.stackObjectByRect(param1,param2);
         this.updateResidentialNeeds(param2);
      }
      
      private function removeNeedProviderByRect(param1:Number, param2:Rectangle) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Array = null;
         var _loc7_:ShopFieldObjectVo = null;
         var _loc3_:int = param2.x;
         while(_loc3_ < param2.x + param2.width)
         {
            _loc4_ = param2.y;
            while(_loc4_ < param2.y + param2.height)
            {
               _loc5_ = 0;
               _loc6_ = this._buffMatrix.getColBy2DCoordinates(_loc3_,_loc4_);
               if(_loc6_ != null && _loc6_.length > 0)
               {
                  for each(_loc7_ in _loc6_)
                  {
                     if(_loc7_ != null && _loc7_.buildingDTO.id == param1)
                     {
                        this._buffMatrix.setObject(null,_loc3_,_loc4_,_loc5_);
                        break;
                     }
                     _loc5_++;
                  }
               }
               _loc4_++;
            }
            _loc3_++;
         }
         this.updateResidentialNeeds(param2);
      }
      
      private function calculateSatisfyRect(param1:Rectangle, param2:Point, param3:Point) : Rectangle
      {
         var _loc4_:Rectangle = null;
         _loc4_ = param1.clone();
         _loc4_.x = param2.x - (_loc4_.width - param3.x) / 2;
         _loc4_.y = param2.y - (_loc4_.height - param3.y) / 2;
         return _loc4_;
      }
      
      private function calculateSatisfyRectByShop(param1:ShopFieldObjectVo) : Rectangle
      {
         var _loc2_:Rectangle = null;
         _loc2_ = param1.satisfyRange;
         _loc2_.x = param1.matrixCoordinates.x - (_loc2_.width - param1.configPlayfieldItemVo.sizeX) / 2;
         _loc2_.y = param1.matrixCoordinates.y - (_loc2_.height - param1.configPlayfieldItemVo.sizeY) / 2;
         return _loc2_;
      }
      
      private function calculateOldSatisfyRectByShop(param1:ShopFieldObjectVo) : Rectangle
      {
         var _loc2_:Rectangle = null;
         _loc2_ = param1.satisfyRange;
         _loc2_.x = param1.formerPosition.x - (_loc2_.width - param1.configPlayfieldItemVo.sizeX) / 2;
         _loc2_.y = param1.formerPosition.y - (_loc2_.height - param1.configPlayfieldItemVo.sizeY) / 2;
         return _loc2_;
      }
      
      public function updateShop(param1:ShopFieldObjectVo) : void
      {
         this.updateResidentialNeeds(this.calculateSatisfyRectByShop(param1));
      }
      
      public function updateShopsOldResidentials(param1:ShopFieldObjectVo) : void
      {
         this.updateResidentialNeeds(this.calculateOldSatisfyRectByShop(param1));
      }
      
      public function updateNeedsForSingleResidential(param1:ResidentialFieldObjectVo) : void
      {
         var _loc2_:NeedVo = null;
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:ShopFieldObjectVo = null;
         for each(_loc2_ in param1.residentialNeeds)
         {
            _loc3_ = false;
            _loc2_.isSatisfied = false;
            _loc4_ = param1.matrixCoordinates.x;
            while(_loc4_ < param1.matrixCoordinates.width + param1.matrixCoordinates.x)
            {
               if(_loc3_)
               {
                  break;
               }
               _loc5_ = param1.matrixCoordinates.y;
               while(_loc5_ < param1.matrixCoordinates.height + param1.matrixCoordinates.y)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  for each(_loc6_ in this._buffMatrix.getColBy2DCoordinates(_loc4_,_loc5_))
                  {
                     if(_loc6_ != null)
                     {
                        if(_loc2_.shopConfigIds.indexOf(_loc6_.configPlayfieldItemVo.id) != -1)
                        {
                           if(_loc6_.isOperational && _loc6_.isConnectedToStreet)
                           {
                              _loc2_.isSatisfied = true;
                              _loc3_ = true;
                              break;
                           }
                        }
                     }
                  }
                  _loc5_++;
               }
               _loc4_++;
            }
         }
      }
      
      public function updateResidentialNeeds(param1:Rectangle) : void
      {
         var _loc3_:int = 0;
         var _loc4_:ResidentialFieldObjectVo = null;
         var _loc2_:int = param1.x;
         while(_loc2_ < param1.width + param1.x)
         {
            _loc3_ = param1.y;
            while(_loc3_ < param1.height + param1.y)
            {
               _loc4_ = ResidentialFieldObjectVo(this._residentialMatrix.getObject(_loc2_,_loc3_));
               if(_loc4_ != null)
               {
                  this.updateNeedsForSingleResidential(_loc4_);
               }
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      public function reset() : void
      {
         var _loc1_:Point = new Point(this._playfieldProxy.fieldSize.x,this._playfieldProxy.fieldSize.y);
         this._buffMatrix = new ArrayMatrix3D(_loc1_.x,_loc1_.y,_loc1_.x * _loc1_.y);
         this._residentialMatrix = new ArrayMatrix(_loc1_.x,_loc1_.y);
      }
      
      public function removeResidential(param1:ResidentialFieldObjectVo) : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < param1.configPlayfieldItemVo.sizeX)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.configPlayfieldItemVo.sizeY)
            {
               this._residentialMatrix.setObject(null,param1.matrixCoordinates.x + _loc2_,param1.matrixCoordinates.y + _loc3_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      public function updateResidential(param1:ResidentialFieldObjectVo) : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this._residentialMatrix.maxX)
         {
            _loc3_ = 0;
            while(_loc3_ < this._residentialMatrix.maxY)
            {
               if(param1 == this._residentialMatrix.getObject(_loc2_,_loc3_))
               {
                  this.removeResidential(this._residentialMatrix.getObject(_loc2_,_loc3_) as ResidentialFieldObjectVo);
                  this.addResidential(param1);
                  this.updateResidentialNeeds(param1.matrixCoordinates);
                  return;
               }
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      public function addResidential(param1:ResidentialFieldObjectVo) : void
      {
         var _loc4_:int = 0;
         var _loc2_:ResidentialFieldObjectVo = param1;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.configPlayfieldItemVo.sizeX)
         {
            _loc4_ = 0;
            while(_loc4_ < _loc2_.configPlayfieldItemVo.sizeY)
            {
               this._residentialMatrix.setObject(_loc2_,_loc2_.matrixCoordinates.x + _loc3_,_loc2_.matrixCoordinates.y + _loc4_);
               _loc4_++;
            }
            _loc3_++;
         }
         this.updateNeedsForSingleResidential(_loc2_);
      }
      
      public function get buffMatrix() : ArrayMatrix3D
      {
         return this._buffMatrix;
      }
      
      public function get residentialMatrix() : ArrayMatrix
      {
         return this._residentialMatrix;
      }
      
      public function set residentialMatrix(param1:ArrayMatrix) : void
      {
         this._residentialMatrix = param1;
      }
   }
}

