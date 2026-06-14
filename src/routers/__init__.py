from fastapi import APIRouter

from src.routers.user import router as user

router = APIRouter(prefix="/v1")
router.include_router(user, prefix="/user", tags=["User"])
